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
include source/App/Parcat/CMakeFiles/parcat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include source/App/Parcat/CMakeFiles/parcat.dir/compiler_depend.make

# Include the progress variables for this target.
include source/App/Parcat/CMakeFiles/parcat.dir/progress.make

# Include the compile flags for this target's objects.
include source/App/Parcat/CMakeFiles/parcat.dir/flags.make

source/App/Parcat/CMakeFiles/parcat.dir/parcat.cpp.o: source/App/Parcat/CMakeFiles/parcat.dir/flags.make
source/App/Parcat/CMakeFiles/parcat.dir/parcat.cpp.o: ../source/App/Parcat/parcat.cpp
source/App/Parcat/CMakeFiles/parcat.dir/parcat.cpp.o: source/App/Parcat/CMakeFiles/parcat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dudabosel/VVCSoftware_VTM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/App/Parcat/CMakeFiles/parcat.dir/parcat.cpp.o"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/Parcat && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT source/App/Parcat/CMakeFiles/parcat.dir/parcat.cpp.o -MF CMakeFiles/parcat.dir/parcat.cpp.o.d -o CMakeFiles/parcat.dir/parcat.cpp.o -c /home/dudabosel/VVCSoftware_VTM/source/App/Parcat/parcat.cpp

source/App/Parcat/CMakeFiles/parcat.dir/parcat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parcat.dir/parcat.cpp.i"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/Parcat && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dudabosel/VVCSoftware_VTM/source/App/Parcat/parcat.cpp > CMakeFiles/parcat.dir/parcat.cpp.i

source/App/Parcat/CMakeFiles/parcat.dir/parcat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parcat.dir/parcat.cpp.s"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/Parcat && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dudabosel/VVCSoftware_VTM/source/App/Parcat/parcat.cpp -o CMakeFiles/parcat.dir/parcat.cpp.s

# Object files for target parcat
parcat_OBJECTS = \
"CMakeFiles/parcat.dir/parcat.cpp.o"

# External object files for target parcat
parcat_EXTERNAL_OBJECTS =

../bin/umake/gcc-11.3/x86_64/release/parcat: source/App/Parcat/CMakeFiles/parcat.dir/parcat.cpp.o
../bin/umake/gcc-11.3/x86_64/release/parcat: source/App/Parcat/CMakeFiles/parcat.dir/build.make
../bin/umake/gcc-11.3/x86_64/release/parcat: ../lib/umake/gcc-11.3/x86_64/release/libCommonLib.a
../bin/umake/gcc-11.3/x86_64/release/parcat: ../lib/umake/gcc-11.3/x86_64/release/libDecoderLib.a
../bin/umake/gcc-11.3/x86_64/release/parcat: ../lib/umake/gcc-11.3/x86_64/release/libUtilities.a
../bin/umake/gcc-11.3/x86_64/release/parcat: ../lib/umake/gcc-11.3/x86_64/release/libCommonLib.a
../bin/umake/gcc-11.3/x86_64/release/parcat: source/App/Parcat/CMakeFiles/parcat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dudabosel/VVCSoftware_VTM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/umake/gcc-11.3/x86_64/release/parcat"
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/Parcat && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parcat.dir/link.txt --verbose=$(VERBOSE)
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/Parcat && /usr/bin/cmake -E copy  /home/dudabosel/VVCSoftware_VTM/bin/umake/gcc-11.3/x86_64/release/parcat    /home/dudabosel/VVCSoftware_VTM/bin/parcatStatic  

# Rule to build all files generated by this target.
source/App/Parcat/CMakeFiles/parcat.dir/build: ../bin/umake/gcc-11.3/x86_64/release/parcat
.PHONY : source/App/Parcat/CMakeFiles/parcat.dir/build

source/App/Parcat/CMakeFiles/parcat.dir/clean:
	cd /home/dudabosel/VVCSoftware_VTM/build/source/App/Parcat && $(CMAKE_COMMAND) -P CMakeFiles/parcat.dir/cmake_clean.cmake
.PHONY : source/App/Parcat/CMakeFiles/parcat.dir/clean

source/App/Parcat/CMakeFiles/parcat.dir/depend:
	cd /home/dudabosel/VVCSoftware_VTM/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dudabosel/VVCSoftware_VTM /home/dudabosel/VVCSoftware_VTM/source/App/Parcat /home/dudabosel/VVCSoftware_VTM/build /home/dudabosel/VVCSoftware_VTM/build/source/App/Parcat /home/dudabosel/VVCSoftware_VTM/build/source/App/Parcat/CMakeFiles/parcat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/App/Parcat/CMakeFiles/parcat.dir/depend

