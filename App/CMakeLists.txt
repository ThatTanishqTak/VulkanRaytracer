# Define the App executable
add_executable(App
    src/EntryPoint.cpp
)

# Include directories
target_include_directories(App PRIVATE
    ${CMAKE_SOURCE_DIR}/Engine/src
    ${CMAKE_SOURCE_DIR}/Engine/vendor
)

# Link dependencies
target_link_libraries(App PRIVATE Engine)