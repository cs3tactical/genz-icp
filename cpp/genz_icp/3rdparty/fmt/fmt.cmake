include(FetchContent)
FetchContent_Declare(fmt SYSTEM URL  https://github.com/fmtlib/fmt/archive/refs/tags/9.0.0.tar.gz)
set(FMT_INSTALL ON CACHE BOOL "" FORCE)
set(FMT_TEST OFF CACHE BOOL "" FORCE)
set(FMT_DOC OFF CACHE BOOL "" FORCE)

# **Force shared library compilation**
set(FMT_SHARED ON CACHE BOOL "" FORCE)
set(BUILD_SHARED_LIBS ON CACHE BOOL "" FORCE)
set(CMAKE_POSITION_INDEPENDENT_CODE ON CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(fmt)

# Explicitly set fmt as a shared library
if (TARGET fmt)
  set_target_properties(fmt PROPERTIES POSITION_INDEPENDENT_CODE ON)
endif()