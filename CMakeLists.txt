cmake_minimum_required(VERSION "3.20")  # Specifies the required CMake version.
project("CONAN HELLO WORLD PROJECT" CPP)      # Defines the project name.

find_package(ZLIB REQUIRED)


# $source_files is a space-delimited list of filenames.
add_executable("app.exe" "main.cpp")  # Specifies the executable to build.
target_link_libraries("app.exe" ZLIB::ZLIB)  # Specifies what libraries to link, using Conan.

