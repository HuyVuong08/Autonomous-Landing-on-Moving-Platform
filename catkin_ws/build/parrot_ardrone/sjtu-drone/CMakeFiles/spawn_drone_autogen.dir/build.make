# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build

# Utility rule file for spawn_drone_autogen.

# Include the progress variables for this target.
include parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir/progress.make

parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic UIC for target spawn_drone"
	cd /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/parrot_ardrone/sjtu-drone && /usr/bin/cmake -E cmake_autogen /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir ""

spawn_drone_autogen: parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen
spawn_drone_autogen: parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir/build.make

.PHONY : spawn_drone_autogen

# Rule to build all files generated by this target.
parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir/build: spawn_drone_autogen

.PHONY : parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir/build

parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir/clean:
	cd /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/parrot_ardrone/sjtu-drone && $(CMAKE_COMMAND) -P CMakeFiles/spawn_drone_autogen.dir/cmake_clean.cmake
.PHONY : parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir/clean

parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir/depend:
	cd /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/parrot_ardrone/sjtu-drone /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : parrot_ardrone/sjtu-drone/CMakeFiles/spawn_drone_autogen.dir/depend

