CFLAGS = -std=c++20 -O2

LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

buildDir:
	mkdir -p build;

VulkanTest: src/main.cpp buildDir
	g++ $(CFLAGS) -o build/VulkanTest src/main.cpp $(LDFLAGS)

test: VulkanTest
	./build/VulkanTest;

clean:
	rm -rf build/

.PHONY: test clean buildDir