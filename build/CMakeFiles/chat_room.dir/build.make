# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/local/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wwt/chat_room

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wwt/chat_room/build

# Include any dependencies generated for this target.
include CMakeFiles/chat_room.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/chat_room.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/chat_room.dir/flags.make

CMakeFiles/chat_room.dir/chat/my_module.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/my_module.cpp.o: ../chat/my_module.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/chat_room.dir/chat/my_module.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/my_module.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/my_module.cpp.o -c /home/wwt/chat_room/chat/my_module.cpp

CMakeFiles/chat_room.dir/chat/my_module.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/my_module.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/my_module.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/my_module.cpp > CMakeFiles/chat_room.dir/chat/my_module.cpp.i

CMakeFiles/chat_room.dir/chat/my_module.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/my_module.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/my_module.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/my_module.cpp -o CMakeFiles/chat_room.dir/chat/my_module.cpp.s

CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.o: ../chat/resource_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/resource_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.o -c /home/wwt/chat_room/chat/resource_servlet.cpp

CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/resource_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/resource_servlet.cpp > CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/resource_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/resource_servlet.cpp -o CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/chat_message.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/chat_message.cpp.o: ../chat/chat_message.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/chat_room.dir/chat/chat_message.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/chat_message.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/chat_message.cpp.o -c /home/wwt/chat_room/chat/chat_message.cpp

CMakeFiles/chat_room.dir/chat/chat_message.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/chat_message.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/chat_message.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/chat_message.cpp > CMakeFiles/chat_room.dir/chat/chat_message.cpp.i

CMakeFiles/chat_room.dir/chat/chat_message.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/chat_message.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/chat_message.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/chat_message.cpp -o CMakeFiles/chat_room.dir/chat/chat_message.cpp.s

CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.o: ../chat/chat_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/chat_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.o -c /home/wwt/chat_room/chat/chat_servlet.cpp

CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/chat_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/chat_servlet.cpp > CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/chat_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/chat_servlet.cpp -o CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.o: ../chat/manager/user_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/manager/user_manager.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.o -c /home/wwt/chat_room/chat/manager/user_manager.cpp

CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/manager/user_manager.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/manager/user_manager.cpp > CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.i

CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/manager/user_manager.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/manager/user_manager.cpp -o CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.o: ../chat/servlets/user_create_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_create_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/user_create_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_create_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/user_create_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_create_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/user_create_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.o: ../chat/servlets/user_active_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_active_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/user_active_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_active_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/user_active_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_active_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/user_active_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.o: ../chat/servlets/user_login_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_login_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/user_login_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_login_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/user_login_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_login_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/user_login_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.o: ../chat/servlets/user_clear_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_clear_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/user_clear_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_clear_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/user_clear_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_clear_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/user_clear_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.o: ../chat/servlets/user_modify_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_modify_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/user_modify_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_modify_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/user_modify_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_modify_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/user_modify_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.o: ../chat/servlets/user_logout_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_logout_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/user_logout_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_logout_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/user_logout_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_logout_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/user_logout_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.o: ../chat/servlets/user_forget_passwd_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_forget_passwd_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/user_forget_passwd_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_forget_passwd_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/user_forget_passwd_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_forget_passwd_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/user_forget_passwd_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.o: ../chat/servlets/user_change_passwd_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_change_passwd_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/user_change_passwd_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_change_passwd_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/user_change_passwd_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/user_change_passwd_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/user_change_passwd_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.o: ../chat/servlets/file_upload_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/file_upload_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/file_upload_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/file_upload_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/file_upload_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/file_upload_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/file_upload_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.o: ../chat/servlets/file_query_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/file_query_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/file_query_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/file_query_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/file_query_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/file_query_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/file_query_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.o: ../chat/servlets/file_download_servlet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/servlets/file_download_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.o -c /home/wwt/chat_room/chat/servlets/file_download_servlet.cpp

CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/file_download_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/servlets/file_download_servlet.cpp > CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.i

CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/servlets/file_download_servlet.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/servlets/file_download_servlet.cpp -o CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.s

CMakeFiles/chat_room.dir/chat/struct.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/struct.cpp.o: ../chat/struct.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/chat_room.dir/chat/struct.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/struct.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/struct.cpp.o -c /home/wwt/chat_room/chat/struct.cpp

CMakeFiles/chat_room.dir/chat/struct.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/struct.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/struct.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/struct.cpp > CMakeFiles/chat_room.dir/chat/struct.cpp.i

CMakeFiles/chat_room.dir/chat/struct.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/struct.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/struct.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/struct.cpp -o CMakeFiles/chat_room.dir/chat/struct.cpp.s

CMakeFiles/chat_room.dir/chat/chat_util.cpp.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/chat_util.cpp.o: ../chat/chat_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/chat_room.dir/chat/chat_util.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) -D__FILE__=\"chat/chat_util.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_room.dir/chat/chat_util.cpp.o -c /home/wwt/chat_room/chat/chat_util.cpp

CMakeFiles/chat_room.dir/chat/chat_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/chat_util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/chat_util.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wwt/chat_room/chat/chat_util.cpp > CMakeFiles/chat_room.dir/chat/chat_util.cpp.i

CMakeFiles/chat_room.dir/chat/chat_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/chat_util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) -D__FILE__=\"chat/chat_util.cpp\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wwt/chat_room/chat/chat_util.cpp -o CMakeFiles/chat_room.dir/chat/chat_util.cpp.s

# Object files for target chat_room
chat_room_OBJECTS = \
"CMakeFiles/chat_room.dir/chat/my_module.cpp.o" \
"CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/chat_message.cpp.o" \
"CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.o" \
"CMakeFiles/chat_room.dir/chat/struct.cpp.o" \
"CMakeFiles/chat_room.dir/chat/chat_util.cpp.o"

# External object files for target chat_room
chat_room_EXTERNAL_OBJECTS =

../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/my_module.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/resource_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/chat_message.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/chat_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/manager/user_manager.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/user_create_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/user_active_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/user_login_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/user_clear_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/user_modify_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/user_logout_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/user_forget_passwd_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/user_change_passwd_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/file_upload_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/file_query_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/servlets/file_download_servlet.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/struct.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/chat_util.cpp.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/build.make
../lib/libchat_room.so: orm_out/liborm_data.a
../lib/libchat_room.so: CMakeFiles/chat_room.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wwt/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX shared library ../lib/libchat_room.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chat_room.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/chat_room.dir/build: ../lib/libchat_room.so

.PHONY : CMakeFiles/chat_room.dir/build

CMakeFiles/chat_room.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/chat_room.dir/cmake_clean.cmake
.PHONY : CMakeFiles/chat_room.dir/clean

CMakeFiles/chat_room.dir/depend:
	cd /home/wwt/chat_room/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wwt/chat_room /home/wwt/chat_room /home/wwt/chat_room/build /home/wwt/chat_room/build /home/wwt/chat_room/build/CMakeFiles/chat_room.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/chat_room.dir/depend

