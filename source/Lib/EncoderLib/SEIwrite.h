/* The copyright in this software is being made available under the BSD
 * License, included below. This software may be subject to other third party
 * and contributor rights, including patent rights, and no such rights are
 * granted under this license.
 *
 * Copyright (c) 2010-2022, ITU/ISO/IEC
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

#pragma once

#ifndef __SEIWRITE__
#define __SEIWRITE__

#include <fstream>

#include "VLCWriter.h"
#include "CommonLib/SEI.h"

class OutputBitstream;

//! \ingroup EncoderLib
//! \{
class SEIWriter : public VLCWriter
{
public:
  SEIWriter() {};
  virtual ~SEIWriter() {};

  uint32_t writeSEImessages(OutputBitstream& bs, const SEIMessages &seiList, HRD &hrd, bool isNested, const uint32_t temporalId);

protected:
  void xWriteSEIuserDataUnregistered(const SEIuserDataUnregistered &sei);
  void xWriteSEIDecodingUnitInfo(const SEIDecodingUnitInfo& sei, const SEIBufferingPeriod& bp, const uint32_t temporalId);
  void xWriteSEIDecodedPictureHash(const SEIDecodedPictureHash& sei);
  void xWriteSEIBufferingPeriod(const SEIBufferingPeriod& sei);
  void xWriteSEIPictureTiming(const SEIPictureTiming& sei, const SEIBufferingPeriod& bp, const uint32_t temporalId);
  void xWriteSEIFrameFieldInfo(const SEIFrameFieldInfo& sei);
  void xWriteSEIDependentRAPIndication(const SEIDependentRAPIndication& sei);
  void xWriteSEIEdrapIndication(const SEIExtendedDrapIndication& sei);
  void xWriteSEIScalableNesting(OutputBitstream& bs, const SEIScalableNesting& sei);
  void xWriteSEIFramePacking(const SEIFramePacking& sei);
  void xWriteSEIDisplayOrientation(const SEIDisplayOrientation& sei);
  void xWriteSEIParameterSetsInclusionIndication(const SEIParameterSetsInclusionIndication& sei);
  void xWriteSEIMasteringDisplayColourVolume( const SEIMasteringDisplayColourVolume& sei);
  void xWriteSEIAlternativeTransferCharacteristics(const SEIAlternativeTransferCharacteristics& sei);
  void xWriteSEIEquirectangularProjection         (const SEIEquirectangularProjection &sei);
  void xWriteSEISphereRotation                    (const SEISphereRotation &sei);
  void xWriteSEIOmniViewport                      (const SEIOmniViewport& sei);
  void xWriteSEIRegionWisePacking                 (const SEIRegionWisePacking &sei);
  void xWriteSEIGeneralizedCubemapProjection      (const SEIGeneralizedCubemapProjection &sei);
  void xWriteSEIScalabilityDimensionInfo          (const SEIScalabilityDimensionInfo& sei);
  void xWriteSEIMultiviewAcquisitionInfo          (const SEIMultiviewAcquisitionInfo& sei);
  void xWriteSEIMultiviewViewPosition             (const SEIMultiviewViewPosition& sei);
  void xWriteSEIAlphaChannelInfo                  (const SEIAlphaChannelInfo& sei);
  void xWriteSEIDepthRepresentationInfo           (const SEIDepthRepresentationInfo& sei);
  void xWriteSEIDepthRepInfoElement               (double f);
  void xWriteSEISubpictureLevelInfo               (const SEISubpicureLevelInfo &sei);
  void xWriteSEISampleAspectRatioInfo             (const SEISampleAspectRatioInfo &sei);
  void xWriteSEIPhaseIndication                   (const SEIPhaseIndication&sei);
  void xWriteSEIConstrainedRaslIndication         (const SEIConstrainedRaslIndication &sei);
  void xWriteSEIUserDataRegistered(const SEIUserDataRegistered& sei);
  void xWriteSEIFilmGrainCharacteristics(const SEIFilmGrainCharacteristics& sei);
  void xWriteSEIContentLightLevelInfo(const SEIContentLightLevelInfo& sei);
  void xWriteSEIAmbientViewingEnvironment(const SEIAmbientViewingEnvironment& sei);
  void xWriteSEIContentColourVolume(const SEIContentColourVolume &sei);
  void xWriteSEIColourTransformInfo(const SEIColourTransformInfo& sei);
  void xWriteSEIAnnotatedRegions                  (const SEIAnnotatedRegions& sei);
  void xWriteSEIShutterInterval(const SEIShutterIntervalInfo& sei);
  void xWriteSEIpayloadData(OutputBitstream &bs, const SEI& sei, HRD &hrd, const uint32_t temporalId);
  void xWriteByteAlign();
  void xWriteSEINeuralNetworkPostFilterCharacteristics(const SEINeuralNetworkPostFilterCharacteristics& sei);
  void xWriteNNPFCComplexityElement(const SEINeuralNetworkPostFilterCharacteristics& sei);
  void xWriteSEINeuralNetworkPostFilterActivation(const SEINeuralNetworkPostFilterActivation &sei);
  void xWriteSEIProcessingOrder(const SEIProcessingOrderInfo &sei);
#ifdef GREEN_METADATA_SEI_ENABLED
  void xWriteSEIGreenMetadataInfo                 (const SEIGreenMetadataInfo &sei);
#endif
protected:
  HRD m_nestingHrd;
};

//! \}

#endif
