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

add_subdirectory (axl)
include (axl/cmake/import_axl.cmake)

add_subdirectory (graco)
include (graco/cmake/import_graco.cmake)

if (EXPAT_FOUND)
	add_subdirectory (doxyrest)
	include (doxyrest/cmake/import_doxyrest.cmake)
endif ()

add_subdirectory (jancy)

#...............................................................................
