# This is a CMake example for Python

find_package(SWIG REQUIRED)
include(${SWIG_USE_FILE})

find_package(PythonLibs)
include_directories(${PYTHON_INCLUDE_PATH})

find_package(Numpy)
include_directories(${NUMPY_INCLUDE_DIRS})

include_directories("${PROJECT_SOURCE_DIR}/CBLAS/include")
include_directories("${PROJECT_SOURCE_DIR}/clapack-3.2.1-CMAKE/INCLUDE")
include_directories("${PROJECT_SOURCE_DIR}/lapacke/include")
include_directories("${PROJECT_SOURCE_DIR}/include/libswiftnav")

#include_directories(${CMAKE_CURRENT_SOURCE_DIR})

set(CMAKE_SWIG_FLAGS "")

set(SWIFTNAV_SWIG_MODULES
  dgnss_management
  test_swig
)

foreach(swig_module ${SWIFTNAV_SWIG_MODULES})
  swig_add_module(${swig_module} python ${swig_module}.i)
  swig_link_libraries(${swig_module} ${PYTHON_LIBRARIES} swiftnav-static)
endforeach()