# Copyright (C) 2012 LuaDist.
# Created by Peter Kapec <kapecp@gmail.com>
# Modified by Zachary Lund <admin@computerquip.com>
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
#	Note:
#		Searching headers and libraries is very simple and is NOT as powerful as scripts
#		distributed with CMake, because LuaDist defines directories to search for.
#		Everyone is encouraged to contact the author with improvements. Maybe this file
#		becomes part of CMake distribution sometimes.

# - Find IUP
# Find the native IUP headers and libraries.
#
# IUP_INCLUDE_DIRS	- where to find iup.h.
# IUP_LIBRARIES	- List of libraries when using iup.
# IUP_FOUND	- True if IUP found.
# IUP_ROOT_DIR - Base folder for a hint to find everything else.

SET(IUP_ROOT_DIR "" CACHE PATH "Base directory hint for IUP variables.")

# Look for the header file.
FIND_PATH( IUP_INCLUDE_DIR NAMES iup.h PATHS ${IUP_ROOT_DIR}\\include )

# Look for the library.
FIND_LIBRARY( IUP_LIBRARY NAMES iup libiup PATHS ${IUP_ROOT_DIR})
FIND_LIBRARY( IUPGL_LIBRARY NAMES iupgl PATHS ${IUP_ROOT_DIR})
FIND_LIBRARY( IUPOLE_LIBRARY NAMES iupole PATHS ${IUP_ROOT_DIR})
FIND_LIBRARY( IUPCONTROLS_LIBRARY NAMES iupcontrols PATHS ${IUP_ROOT_DIR})
FIND_LIBRARY( IUPPPLOT_LIBRARY NAMES iup_pplot PATHS ${IUP_ROOT_DIR})
FIND_LIBRARY( IUPMGLPLOT_LIBRARY NAMES iup_mglplot PATHS ${IUP_ROOT_DIR})
FIND_LIBRARY( IUPIMGLIB_LIBRARY NAMES iupimglib PATHS ${IUP_ROOT_DIR})
FIND_LIBRARY( IUPWEB_LIBRARY NAMES iupweb PATHS ${IUP_ROOT_DIR})
FIND_LIBRARY( IUPTUIO_LIBRARY NAMES iuptuio PATHS ${IUP_ROOT_DIR})

FIND_LIBRARY( IUP_LIBRARY_LUA NAMES iuplua PATHS ${IUP_ROOT_DIR})

FIND_LIBRARY( IUPIM_LIBRARY NAMES iupim PATHS ${IUP_ROOT_DIR})
FIND_LIBRARY( IUPCD_LIBRARY NAMES iupcd PATHS ${IUP_ROOT_DIR})

# Handle the QUIETLY and REQUIRED arguments and set IUP_FOUND to TRUE if all listed variables are TRUE.
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(IUP DEFAULT_MSG IUP_LIBRARY IUP_INCLUDE_DIR)

MESSAGE("Useful info: ${IUP_ROOT_DIR} - ${IUP_LIBRARY} - ${IUP_INCLUDE_DIR}")

# Copy the results to the output variables.
IF(IUP_FOUND)
	SET(IUP_LIBRARIES ${IUP_LIBRARY})
	SET(IUP_INCLUDE_DIRS ${IUP_INCLUDE_DIR})
ENDIF(IUP_FOUND)

MARK_AS_ADVANCED(IUP_INCLUDE_DIRS IUP_LIBRARIES)
