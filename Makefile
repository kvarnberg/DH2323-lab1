# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/josephinekvarnberg/Downloads/DH2323-Skeleton-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/josephinekvarnberg/Downloads/DH2323-Skeleton-master

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.22.1/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.22.1/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/josephinekvarnberg/Downloads/DH2323-Skeleton-master/CMakeFiles /Users/josephinekvarnberg/Downloads/DH2323-Skeleton-master//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/josephinekvarnberg/Downloads/DH2323-Skeleton-master/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named DgiLab

# Build rule for target.
DgiLab: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 DgiLab
.PHONY : DgiLab

# fast build rule for target.
DgiLab/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/DgiLab.dir/build.make CMakeFiles/DgiLab.dir/build
.PHONY : DgiLab/fast

SDL2Auxiliary.o: SDL2Auxiliary.cpp.o
.PHONY : SDL2Auxiliary.o

# target to build an object file
SDL2Auxiliary.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/DgiLab.dir/build.make CMakeFiles/DgiLab.dir/SDL2Auxiliary.cpp.o
.PHONY : SDL2Auxiliary.cpp.o

SDL2Auxiliary.i: SDL2Auxiliary.cpp.i
.PHONY : SDL2Auxiliary.i

# target to preprocess a source file
SDL2Auxiliary.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/DgiLab.dir/build.make CMakeFiles/DgiLab.dir/SDL2Auxiliary.cpp.i
.PHONY : SDL2Auxiliary.cpp.i

SDL2Auxiliary.s: SDL2Auxiliary.cpp.s
.PHONY : SDL2Auxiliary.s

# target to generate assembly for a file
SDL2Auxiliary.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/DgiLab.dir/build.make CMakeFiles/DgiLab.dir/SDL2Auxiliary.cpp.s
.PHONY : SDL2Auxiliary.cpp.s

skeleton.o: skeleton.cpp.o
.PHONY : skeleton.o

# target to build an object file
skeleton.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/DgiLab.dir/build.make CMakeFiles/DgiLab.dir/skeleton.cpp.o
.PHONY : skeleton.cpp.o

skeleton.i: skeleton.cpp.i
.PHONY : skeleton.i

# target to preprocess a source file
skeleton.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/DgiLab.dir/build.make CMakeFiles/DgiLab.dir/skeleton.cpp.i
.PHONY : skeleton.cpp.i

skeleton.s: skeleton.cpp.s
.PHONY : skeleton.s

# target to generate assembly for a file
skeleton.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/DgiLab.dir/build.make CMakeFiles/DgiLab.dir/skeleton.cpp.s
.PHONY : skeleton.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... DgiLab"
	@echo "... SDL2Auxiliary.o"
	@echo "... SDL2Auxiliary.i"
	@echo "... SDL2Auxiliary.s"
	@echo "... skeleton.o"
	@echo "... skeleton.i"
	@echo "... skeleton.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

