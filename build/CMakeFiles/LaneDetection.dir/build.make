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
CMAKE_SOURCE_DIR = /home/zqm/fenli

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zqm/fenli/build

# Include any dependencies generated for this target.
include CMakeFiles/LaneDetection.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LaneDetection.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LaneDetection.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LaneDetection.dir/flags.make

CMakeFiles/LaneDetection.dir/src/main.cpp.o: CMakeFiles/LaneDetection.dir/flags.make
CMakeFiles/LaneDetection.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/LaneDetection.dir/src/main.cpp.o: CMakeFiles/LaneDetection.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqm/fenli/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LaneDetection.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LaneDetection.dir/src/main.cpp.o -MF CMakeFiles/LaneDetection.dir/src/main.cpp.o.d -o CMakeFiles/LaneDetection.dir/src/main.cpp.o -c /home/zqm/fenli/src/main.cpp

CMakeFiles/LaneDetection.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LaneDetection.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqm/fenli/src/main.cpp > CMakeFiles/LaneDetection.dir/src/main.cpp.i

CMakeFiles/LaneDetection.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LaneDetection.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqm/fenli/src/main.cpp -o CMakeFiles/LaneDetection.dir/src/main.cpp.s

CMakeFiles/LaneDetection.dir/src/lane.cpp.o: CMakeFiles/LaneDetection.dir/flags.make
CMakeFiles/LaneDetection.dir/src/lane.cpp.o: ../src/lane.cpp
CMakeFiles/LaneDetection.dir/src/lane.cpp.o: CMakeFiles/LaneDetection.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqm/fenli/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LaneDetection.dir/src/lane.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LaneDetection.dir/src/lane.cpp.o -MF CMakeFiles/LaneDetection.dir/src/lane.cpp.o.d -o CMakeFiles/LaneDetection.dir/src/lane.cpp.o -c /home/zqm/fenli/src/lane.cpp

CMakeFiles/LaneDetection.dir/src/lane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LaneDetection.dir/src/lane.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqm/fenli/src/lane.cpp > CMakeFiles/LaneDetection.dir/src/lane.cpp.i

CMakeFiles/LaneDetection.dir/src/lane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LaneDetection.dir/src/lane.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqm/fenli/src/lane.cpp -o CMakeFiles/LaneDetection.dir/src/lane.cpp.s

# Object files for target LaneDetection
LaneDetection_OBJECTS = \
"CMakeFiles/LaneDetection.dir/src/main.cpp.o" \
"CMakeFiles/LaneDetection.dir/src/lane.cpp.o"

# External object files for target LaneDetection
LaneDetection_EXTERNAL_OBJECTS =

LaneDetection: CMakeFiles/LaneDetection.dir/src/main.cpp.o
LaneDetection: CMakeFiles/LaneDetection.dir/src/lane.cpp.o
LaneDetection: CMakeFiles/LaneDetection.dir/build.make
LaneDetection: /usr/local/lib/libopencv_gapi.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_highgui.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_ml.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_objdetect.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_photo.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_stitching.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_video.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_videoio.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_imgcodecs.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_dnn.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_calib3d.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_features2d.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_flann.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_imgproc.so.4.10.0
LaneDetection: /usr/local/lib/libopencv_core.so.4.10.0
LaneDetection: CMakeFiles/LaneDetection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zqm/fenli/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable LaneDetection"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LaneDetection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LaneDetection.dir/build: LaneDetection
.PHONY : CMakeFiles/LaneDetection.dir/build

CMakeFiles/LaneDetection.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LaneDetection.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LaneDetection.dir/clean

CMakeFiles/LaneDetection.dir/depend:
	cd /home/zqm/fenli/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zqm/fenli /home/zqm/fenli /home/zqm/fenli/build /home/zqm/fenli/build /home/zqm/fenli/build/CMakeFiles/LaneDetection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LaneDetection.dir/depend

