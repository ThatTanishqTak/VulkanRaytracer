# Define the Engine static library
add_library(Engine STATIC
    src/Test.cpp
)

# Include directories
target_include_directories(Engine PUBLIC
    src
    ${VULKAN_SDK}/Include
    vendor/glfw/include
    vendor/glm
)

# Link dependencies
target_link_libraries(Engine PUBLIC
    ${VULKAN_SDK}/Lib/vulkan-1.lib
    ${CMAKE_CURRENT_SOURCE_DIR}/vendor/glfw/lib-vc2022/glfw3.lib
)