# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dudabosel/VVCSoftware_VTM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dudabosel/VVCSoftware_VTM/build

# Include any dependencies generated for this target.
include source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/compiler_depend.make

# Include the progress variables for this target.
include source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/progress.make

# Include the compile flags for this target's objects.
include source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/flags.make

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.o: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/flags.make
source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.o: ../source/App/BitstreamExtractorApp/BitstreamExtractorApp.cpp
source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.o: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dudabosel/VVCSoftware_VTM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.o"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.o -MF CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.o.d -o CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.o -c /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp/BitstreamExtractorApp.cpp

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.i"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp/BitstreamExtractorApp.cpp > CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.i

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.s"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp/BitstreamExtractorApp.cpp -o CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.s

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.o: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/flags.make
source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.o: ../source/App/BitstreamExtractorApp/BitstreamExtractorAppCfg.cpp
source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.o: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dudabosel/VVCSoftware_VTM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.o"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.o -MF CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.o.d -o CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.o -c /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp/BitstreamExtractorAppCfg.cpp

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.i"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp/BitstreamExtractorAppCfg.cpp > CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.i

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.s"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp/BitstreamExtractorAppCfg.cpp -o CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.s

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.o: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/flags.make
source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.o: ../source/App/BitstreamExtractorApp/bitstreamextractormain.cpp
source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.o: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dudabosel/VVCSoftware_VTM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.o"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.o -MF CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.o.d -o CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.o -c /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp/bitstreamextractormain.cpp

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.i"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp/bitstreamextractormain.cpp > CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.i

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.s"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp/bitstreamextractormain.cpp -o CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.s

# Object files for target BitstreamExtractorApp
BitstreamExtractorApp_OBJECTS = \
"CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.o" \
"CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.o" \
"CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.o"

# External object files for target BitstreamExtractorApp
BitstreamExtractorApp_EXTERNAL_OBJECTS =

../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorApp.cpp.o
../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/BitstreamExtractorAppCfg.cpp.o
../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/bitstreamextractormain.cpp.o
../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/build.make
../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: ../lib/umake/gcc-11.3/x86_64/release/libCommonLib.a
../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: ../lib/umake/gcc-11.3/x86_64/release/libEncoderLib.a
../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: ../lib/umake/gcc-11.3/x86_64/release/libDecoderLib.a
../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: ../lib/umake/gcc-11.3/x86_64/release/libUtilities.a
../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: ../lib/umake/gcc-11.3/x86_64/release/libCommonLib.a
../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp: source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dudabosel/VVCSoftware_VTM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../../../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BitstreamExtractorApp.dir/link.txt --verbose=$(VERBOSE)
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && /usr/bin/cmake -E copy  /home/dudabosel/VVCSoftware_VTM/bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp    /home/dudabosel/VVCSoftware_VTM/bin/BitstreamExtractorAppStatic  

# Rule to build all files generated by this target.
source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/build: ../bin/umake/gcc-11.3/x86_64/release/BitstreamExtractorApp
.PHONY : source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/build

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/clean:
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp && $(CMAKE_COMMAND) -P CMakeFiles/BitstreamExtractorApp.dir/cmake_clean.cmake
.PHONY : source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/clean

source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/depend:
	cd /home/dudabosel/VVCSoftware_VTM/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dudabosel/VVCSoftware_VTM /home/dudabosel/VVCSoftware_VTM/source/App/BitstreamExtractorApp /home/dudabosel/VVCSoftware_VTM/build /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp /home/dudabosel/VVCSoftware_VTM/build/source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/App/BitstreamExtractorApp/CMakeFiles/BitstreamExtractorApp.dir/depend

