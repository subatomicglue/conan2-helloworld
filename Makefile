

all:
	rm -rf ./build
	mkdir -p build
	conan remote update conancenter --url="https://center2.conan.io"
	export CMAKE_POLICY_VERSION_MINIMUM=3.5 &&	conan install . --output-folder=build --build=missing -s build_type=Release
	cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=build/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
	cmake --build build


