cmake_minimum_required(VERSION 3.10)

project(project LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(project
    src/main.cpp
    src/particle.cpp
    src/input.cpp
    src/threadpool.cpp
)

target_include_directories(project PRIVATE include)

add_subdirectory(deps/glfw)
add_subdirectory(deps/gl3w)
add_subdirectory(deps/glm)

target_link_libraries(project PRIVATE glfw gl3w glm)