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

cmake_minimum_required(VERSION 3.16)

project (jancy_b)

include (axl/cmake/axl_cmake.cmake NO_POLICY_SCOPE)

#. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

add_subdirectory (axl EXCLUDE_FROM_ALL)
include (axl/cmake/import_axl.cmake)

if(TARGET axl_glibc)
	# force build axl_glibc
	# we link to axl_glibc using CMAKE_STANDARD_LIBRARIES; as such,
	# axl_glibc is not a direct dependency and will be skipped otherwise

	add_custom_target(
		force_build_axl_glibc ALL
		DEPENDS axl_glibc
	)
endif()

add_subdirectory (graco EXCLUDE_FROM_ALL)
include (graco/cmake/import_graco.cmake)

if (EXPAT_FOUND)
	add_subdirectory (doxyrest EXCLUDE_FROM_ALL)
	include (doxyrest/cmake/import_doxyrest.cmake)
endif ()

add_subdirectory (jancy)

#...............................................................................
