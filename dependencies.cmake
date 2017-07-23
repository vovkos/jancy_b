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

set (
	AXL_PATH_LIST

	LUA_INC_DIR
	LUA_LIB_DIR
	LUA_LIB_NAME
	LLVM_INC_DIR
	LLVM_LIB_DIR
	LLVM_CMAKE_DIR
	PCAP_INC_DIR
	PCAP_LIB_DIR
	LIBUSB_INC_DIR
	LIBUSB_LIB_DIR
	LIBSSH2_INC_DIR
	LIBSSH2_LIB_DIR
	OPENSSL_INC_DIR
	OPENSSL_LIB_DIR
	QT_CMAKE_DIR
	QT_DLL_DIR
	RAGEL_EXE
	7Z_EXE
	DOXYGEN_EXE
	DOXYREST_CMAKE_DIR
	SPHINX_BUILD_EXE
	PDFLATEX_EXE
	)

set (
	AXL_IMPORT_LIST
		lua
		llvm
		ragel
		perl
		7z

	OPTIONAL
		pcap
		libssh2
		libusb
		openssl
		doxygen
		doxyrest
		sphinx
		latex
		qt
	)

if (UNIX AND NOT APPLE)
	set (AXL_IMPORT_LIST ${AXL_IMPORT_LIST} OPTIONAL libudev)
endif ()

set (
	AXL_IMPORT_DIR_LIST

	${DOXYREST_CMAKE_DIR}
	)

#...............................................................................
