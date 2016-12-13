#...............................................................................
#
#  This file is part of the Jancy toolkit.
#
#  Jancy is distributed under the MIT license.
#  For details see accompanying license.txt file,
#  the public copy of which is also available at:
#  http://tibbo.com/downloads/archive/jancy/license.txt
#
#...............................................................................

project (jancy_b)

cmake_minimum_required (VERSION 3.3)

include (axl/cmake/axl_cmake.cmake NO_POLICY_SCOPE)

#. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

set (JANCY_B_ROOT_DIR     ${CMAKE_CURRENT_LIST_DIR})
set (JANCY_B_PACKAGE_DIR  ${CMAKE_CURRENT_BINARY_DIR}/package)

#. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

add_subdirectory (axl)
include (axl/cmake/import_axl.cmake)

add_subdirectory (graco)
include (graco/cmake/import_graco.cmake)

add_subdirectory (jancy)
include (jancy/version.cmake)

add_subdirectory (package)

#...............................................................................
