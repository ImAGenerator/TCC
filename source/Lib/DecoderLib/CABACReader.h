/* The copyright in this software is being made available under the BSD
* License, included below. This software may be subject to other third party
* and contributor rights, including patent rights, and no such rights are
* granted under this license.
*
* Copyright (c) 2010-2019, ITU/ISO/IEC
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
*  * Redistributions of source code must retain the above copyright notice,
*    this list of conditions and the following disclaimer.
*  * Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*  * Neither the name of the ITU/ISO/IEC nor the names of its contributors may
*    be used to endorse or promote products derived from this software without
*    specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
* ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS
* BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
* SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
* INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
* ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
* THE POSSIBILITY OF SUCH DAMAGE.
*/

/** \file     CABACReader.h
 *  \brief    Reader for low level syntax
 */

#ifndef __CABACREADER__
#define __CABACREADER__

#include "BinDecoder.h"

#include "CommonLib/ContextModelling.h"
#include "CommonLib/MotionInfo.h"
#include "CommonLib/UnitPartitioner.h"


class CABACReader
{
public:
#if JVET_P0400_REMOVE_SHARED_MERGE_LIST
  CABACReader(BinDecoderBase& binDecoder) : m_BinDecoder(binDecoder), m_Bitstream(0) {}
#else
  CABACReader(BinDecoderBase& binDecoder) : shareStateDec(0), m_BinDecoder(binDecoder), m_Bitstream(0) {}
#endif
  virtual ~CABACReader() {}

public:
  void        initCtxModels             ( Slice&                        slice );
  void        initBitstream             ( InputBitstream*               bitstream )           { m_Bitstream = bitstream; m_BinDecoder.init( m_Bitstream ); }
  const Ctx&  getCtx                    ()                                            const   { return m_BinDecoder.getCtx();  }
  Ctx&        getCtx                    ()                                                    { return m_BinDecoder.getCtx();  }

public:
  // slice segment data (clause 7.3.8.1)
  bool        terminating_bit           ();
  void        remaining_bytes           ( bool                          noTrailingBytesExpected );

  // coding tree unit (clause 7.3.8.2)
  bool        coding_tree_unit          ( CodingStructure&              cs,     const UnitArea& area,     int (&qps)[2],   unsigned  ctuRsAddr );

  // sao (clause 7.3.8.3)
  void        sao                       ( CodingStructure&              cs,     unsigned        ctuRsAddr );

  void        readAlfCtuFilterIndex(CodingStructure&              cs, unsigned        ctuRsAddr);

  // coding (quad)tree (clause 7.3.8.4)
  bool        coding_tree               ( CodingStructure&              cs,     Partitioner&    pm,       CUCtx& cuCtx, Partitioner* pPartitionerChroma = nullptr, CUCtx* pCuCtxChroma = nullptr);
  PartSplit   split_cu_mode             ( CodingStructure&              cs,     Partitioner&    pm );
  ModeType    mode_constraint           ( CodingStructure&              cs,     Partitioner&    pm,       const PartSplit splitMode );

  // coding unit (clause 7.3.8.5)
  bool        coding_unit               ( CodingUnit&                   cu,     Partitioner&    pm,       CUCtx& cuCtx );
  void        cu_transquant_bypass_flag ( CodingUnit&                   cu );
  void        cu_skip_flag              ( CodingUnit&                   cu );
  void        pred_mode                 ( CodingUnit&                   cu );
  void        bdpcm_mode                ( CodingUnit&                   cu,     const ComponentID compID );
  void        cu_pred_data              ( CodingUnit&                   cu );
  void        cu_gbi_flag               ( CodingUnit&                   cu );
  void        extend_ref_line           (CodingUnit&                     cu);
  void        intra_luma_pred_modes     ( CodingUnit&                   cu );
  void        intra_chroma_pred_modes   ( CodingUnit&                   cu );
  bool        intra_chroma_lmc_mode     ( PredictionUnit&               pu );
  void        intra_chroma_pred_mode    ( PredictionUnit&               pu );
  void        cu_residual               ( CodingUnit&                   cu,     Partitioner&    pm,       CUCtx& cuCtx );
  void        rqt_root_cbf              ( CodingUnit&                   cu );
#if JVET_P0517_ADAPTIVE_COLOR_TRANSFORM
  void        adaptive_color_transform(CodingUnit&             cu);
#endif 
  void        sbt_mode                  ( CodingUnit&                   cu );
  bool        end_of_ctu                ( CodingUnit&                   cu,     CUCtx&          cuCtx );
  void        mip_flag                  ( CodingUnit&                   cu );
  void        mip_pred_modes            ( CodingUnit&                   cu );
  void        mip_pred_mode             ( PredictionUnit&               pu );
  void        cu_palette_info           ( CodingUnit&                   cu,     ComponentID     compBegin, uint32_t numComp, CUCtx& cuCtx );
#if JVET_P0077_LINE_CG_PALETTE
  void        cuPaletteSubblockInfo     ( CodingUnit&                   cu,     ComponentID     compBegin, uint32_t numComp, int subSetId, uint32_t& prevRunPos, unsigned& prevRunType );
#endif
  // prediction unit (clause 7.3.8.6)
  void        prediction_unit           ( PredictionUnit&               pu,     MergeCtx&       mrgCtx );
  void        merge_flag                ( PredictionUnit&               pu );
  void        merge_data                ( PredictionUnit&               pu );
  void        affine_flag               ( CodingUnit&                   cu );
  void        subblock_merge_flag       ( CodingUnit&                   cu );
  void        merge_idx                 ( PredictionUnit&               pu );
  void        mmvd_merge_idx(PredictionUnit&               pu);
  void        imv_mode                  ( CodingUnit&                   cu,     MergeCtx&       mrgCtx );
  void        affine_amvr_mode          ( CodingUnit&                   cu,     MergeCtx&       mrgCtx );
  void        inter_pred_idc            ( PredictionUnit&               pu );
  void        ref_idx                   ( PredictionUnit&               pu,     RefPicList      eRefList );
  void        mvp_flag                  ( PredictionUnit&               pu,     RefPicList      eRefList );
  void        MHIntra_flag              ( PredictionUnit&               pu );
  void        smvd_mode              ( PredictionUnit&               pu );


  // transform tree (clause 7.3.8.8)
  void        transform_tree            ( CodingStructure&              cs, Partitioner&    pm, CUCtx& cuCtx, const PartSplit ispType = TU_NO_ISP, const int subTuIdx = -1 );
  bool        cbf_comp                  ( CodingStructure&              cs,     const CompArea& area,     unsigned depth, const bool prevCbf = false, const bool useISP = false );

  // mvd coding (clause 7.3.8.9)
  void        mvd_coding                ( Mv &rMvd );

  // transform unit (clause 7.3.8.10)
  void        transform_unit            ( TransformUnit&                tu,     CUCtx&          cuCtx, Partitioner& pm,        const int subTuCounter = -1 );
  void        cu_qp_delta               ( CodingUnit&                   cu,     int             predQP, int8_t& qp );
  void        cu_chroma_qp_offset       ( CodingUnit&                   cu );

  // residual coding (clause 7.3.8.11)
  void        residual_coding           ( TransformUnit&                tu,     ComponentID     compID, CUCtx& cuCtx );
#if JVET_P1026_MTS_SIGNALLING
  void        ts_flag                   ( TransformUnit&                tu,     ComponentID     compID );
  void        mts_idx                   ( CodingUnit&                   cu,     CUCtx&          cuCtx  );
#else
  void        mts_coding                ( TransformUnit&                tu,     ComponentID     compID );
#endif
  void        residual_lfnst_mode       ( CodingUnit&                   cu,     CUCtx&          cuCtx  );
  void        isp_mode                  ( CodingUnit&                   cu );
  void        explicit_rdpcm_mode       ( TransformUnit&                tu,     ComponentID     compID );
  int         last_sig_coeff            ( CoeffCodingContext&           cctx,   TransformUnit& tu, ComponentID   compID );
  void        residual_coding_subblock  ( CoeffCodingContext&           cctx,   TCoeff*         coeff, const int stateTransTable, int& state );
  void        residual_codingTS         ( TransformUnit&                tu,     ComponentID     compID );
  void        residual_coding_subblockTS( CoeffCodingContext&           cctx,   TCoeff*         coeff  );
  void        joint_cb_cr               ( TransformUnit&                tu,     const int cbfMask );

  // cross component prediction (clause 7.3.8.12)
  void        cross_comp_pred           ( TransformUnit&                tu,     ComponentID     compID );

private:
  unsigned    unary_max_symbol          ( unsigned ctxId0, unsigned ctxIdN, unsigned maxSymbol );
  unsigned    unary_max_eqprob          (                                   unsigned maxSymbol );
  unsigned    exp_golomb_eqprob         ( unsigned count );
  unsigned    get_num_bits_read         () { return m_BinDecoder.getNumBitsRead(); }
  unsigned    code_unary_fixed          ( unsigned ctxId, unsigned unary_max, unsigned fixed );

  void        xReadTruncBinCode(uint32_t& symbol, uint32_t maxSymbol);
  void        parseScanRotationModeFlag ( CodingUnit& cu,           ComponentID compBegin );
  void        xDecodePLTPredIndicator   ( CodingUnit& cu,           uint32_t maxPLTSize,   ComponentID compBegin );
  void        xAdjustPLTIndex           ( CodingUnit& cu,           Pel curLevel,          uint32_t idx, PelBuf& paletteIdx, PLTtypeBuf& paletteRunType, int maxSymbol, ComponentID compBegin );
#if !JVET_P0077_LINE_CG_PALETTE
  uint32_t    cu_run_val                ( PLTRunMode runtype, const uint32_t pltIdx, const uint32_t maxRun );
  uint32_t    xReadTruncUnarySymbol     ( PLTRunMode runtype,       uint32_t maxVal,       uint32_t ctxT );
  uint32_t    xReadTruncMsbP1RefinementBits( PLTRunMode runtype,    uint32_t maxVal,       uint32_t ctxT );
#endif
public:
#if !JVET_P0400_REMOVE_SHARED_MERGE_LIST
  int         shareStateDec;
  Position    shareParentPos;
  Size        shareParentSize;
#endif
private:
  BinDecoderBase& m_BinDecoder;
  InputBitstream* m_Bitstream;
  ScanElement*    m_scanOrder;
};


class CABACDecoder
{
public:
  CABACDecoder()
    : m_CABACReaderStd  ( m_BinDecoderStd )
    , m_CABACReader     { &m_CABACReaderStd }
  {}

  CABACReader*                getCABACReader    ( int           id    )       { return m_CABACReader[id]; }

private:
  BinDecoder_Std          m_BinDecoderStd;
  CABACReader             m_CABACReaderStd;
  CABACReader*            m_CABACReader[BPM_NUM-1];
};

#endif
