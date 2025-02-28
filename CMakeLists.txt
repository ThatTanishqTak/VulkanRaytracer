cmake_minimum_required(VERSION 3.10)
project(VulkanRaytracer)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set VULKAN_SDK to the environment variable
set(VULKAN_SDK $ENV{VULKAN_SDK})

# Configurations
set(CMAKE_CONFIGURATION_TYPES "Debug;Release" CACHE STRING "Build configurations" FORCE)

# Output directories
set(OUTPUT_DIR "${CMAKE_BINARY_DIR}/bin/$<CONFIG>-$<PLATFORM_ID>-$<TARGET_PROPERTY:ARCHITECTURE>")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${OUTPUT_DIR}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${OUTPUT_DIR}")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${OUTPUT_DIR}")

# Include subdirectories
add_subdirectory(Engine)
add_subdirectory(App)