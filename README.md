# hello world / quick start for conan 2.0 package manager

See also: https://docs.conan.io/2/tutorial/consuming_packages/build_simple_cmake_project.html for the original tutorial


# conan version used here
```
$ conan --version
Conan version 2.0.5
```

# build
```
# first time using conan 2?
# create a default conan build profile (see below for MacOS example profile)
$ conan profile detect --force
$ conan profile path default    # if you want to see where it's stored

# create the build:
$ mkdir -p build
$ cd build
$ conan install .. --output-folder=. --build=missing
$ cmake ..

# build it:
$ cmake --build .

# build it (alternative)
$ make
```

# conan profile used
Found in `~/.conan2/profiles/default` and generated for MacBookPro 16" 2019 Intel:
```
[settings]
arch=x86_64
build_type=Release
compiler=apple-clang
compiler.cppstd=gnu17
compiler.libcxx=libc++
compiler.version=14
os=Macos
```

# Files:
- [conanfile.txt](conanfile.txt)
- [CMakeFile.txt](CMakeLists.txt)
- [main.cpp](main.cpp)


# Example `conanfile.txt` 
```
[requires]
# You may have multiple lines like the one below, if you have many dependencies.
$library/$version
$library/$version@$owner/$branch

[generators]
CMakeDeps
CMakeToolchain
```



