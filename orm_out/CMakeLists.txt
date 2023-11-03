cmake_minimum_required(VERSION 3.0)
project(orm_data)

# set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -fPIC")

set(LIB_SRC
    chat/data/user_info.cpp
)

add_library(orm_data ${LIB_SRC})
redefine_file_macro(orm_data)
