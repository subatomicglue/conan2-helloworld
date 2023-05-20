cmake_minimum_required(VERSION 3.20)  # Specifies the required CMake version.
project("compressor" CPP)      # Defines the project name.

find_package(ZLIB REQUIRED)


# $source_files is a space-delimited list of filenames.
add_executable(${PROJECT_NAME}  "main.cpp")  # Specifies the executable to build.
target_link_libraries(${PROJECT_NAME}  ZLIB::ZLIB)  # Specifies what libraries to link, using Conan.

