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

#. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

set(_PREV_CXX_FLAGS ${CMAKE_CXX_FLAGS})

if(UNIX)
	# build with -fPIC (and possibly -m32)
	set(CMAKE_CXX_FLAGS "-fPIC ${CMAKE_CXX_FLAGS}")
	if(TARGET_CPU STREQUAL "x86")
		set(CMAKE_CXX_FLAGS "-m32 ${CMAKE_CXX_FLAGS}")
	endif()
endif()

set(RE2_BUILD_TESTING OFF CACHE BOOL "RE2 tests disabled" FORCE)
add_subdirectory(re2s)
set(CMAKE_CXX_FLAGS ${_PREV_CXX_FLAGS})

#. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

include (axl/cmake/axl_cmake.cmake NO_POLICY_SCOPE)

#. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

set(BUILD_AXL_TESTS OFF CACHE BOOL "AXL tests disabled" FORCE)
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

set(BUILD_GRACO_TESTS OFF CACHE BOOL "Graco tests disabled" FORCE)
add_subdirectory (graco EXCLUDE_FROM_ALL)
include (graco/cmake/import_graco.cmake)

if (EXPAT_FOUND)
	set(BUILD_DOXYREST_SAMPLES OFF CACHE BOOL "Doxyrest samples disabled" FORCE)
	add_subdirectory (doxyrest EXCLUDE_FROM_ALL)
	include (doxyrest/cmake/import_doxyrest.cmake)
endif ()

add_subdirectory (jancy)

#...............................................................................
