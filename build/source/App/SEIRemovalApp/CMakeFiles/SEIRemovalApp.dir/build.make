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
CMAKE_SOURCE_DIR = /home/dudabosel/TCC/TCC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dudabosel/TCC/TCC/build

# Include any dependencies generated for this target.
include source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/compiler_depend.make

# Include the progress variables for this target.
include source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/progress.make

# Include the compile flags for this target's objects.
include source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/flags.make

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.o: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/flags.make
source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.o: ../source/App/SEIRemovalApp/SEIRemovalApp.cpp
source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.o: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dudabosel/TCC/TCC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.o"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.o -MF CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.o.d -o CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.o -c /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp/SEIRemovalApp.cpp

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.i"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp/SEIRemovalApp.cpp > CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.i

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.s"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp/SEIRemovalApp.cpp -o CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.s

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.o: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/flags.make
source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.o: ../source/App/SEIRemovalApp/SEIRemovalAppCfg.cpp
source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.o: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dudabosel/TCC/TCC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.o"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.o -MF CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.o.d -o CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.o -c /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp/SEIRemovalAppCfg.cpp

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.i"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp/SEIRemovalAppCfg.cpp > CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.i

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.s"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp/SEIRemovalAppCfg.cpp -o CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.s

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.o: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/flags.make
source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.o: ../source/App/SEIRemovalApp/seiremovalmain.cpp
source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.o: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dudabosel/TCC/TCC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.o"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.o -MF CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.o.d -o CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.o -c /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp/seiremovalmain.cpp

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.i"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp/seiremovalmain.cpp > CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.i

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.s"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp/seiremovalmain.cpp -o CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.s

# Object files for target SEIRemovalApp
SEIRemovalApp_OBJECTS = \
"CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.o" \
"CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.o" \
"CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.o"

# External object files for target SEIRemovalApp
SEIRemovalApp_EXTERNAL_OBJECTS =

../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalApp.cpp.o
../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/SEIRemovalAppCfg.cpp.o
../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/seiremovalmain.cpp.o
../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/build.make
../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp: ../lib/umake/gcc-11.3/x86_64/release/libCommonLib.a
../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp: ../lib/umake/gcc-11.3/x86_64/release/libDecoderLib.a
../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp: ../lib/umake/gcc-11.3/x86_64/release/libUtilities.a
../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp: ../lib/umake/gcc-11.3/x86_64/release/libCommonLib.a
../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp: source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dudabosel/TCC/TCC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../../../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp"
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SEIRemovalApp.dir/link.txt --verbose=$(VERBOSE)
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && /usr/bin/cmake -E copy  /home/dudabosel/TCC/TCC/bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp    /home/dudabosel/TCC/TCC/bin/SEIRemovalAppStatic  

# Rule to build all files generated by this target.
source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/build: ../bin/umake/gcc-11.3/x86_64/release/SEIRemovalApp
.PHONY : source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/build

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/clean:
	cd /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp && $(CMAKE_COMMAND) -P CMakeFiles/SEIRemovalApp.dir/cmake_clean.cmake
.PHONY : source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/clean

source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/depend:
	cd /home/dudabosel/TCC/TCC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dudabosel/TCC/TCC /home/dudabosel/TCC/TCC/source/App/SEIRemovalApp /home/dudabosel/TCC/TCC/build /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp /home/dudabosel/TCC/TCC/build/source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/App/SEIRemovalApp/CMakeFiles/SEIRemovalApp.dir/depend
