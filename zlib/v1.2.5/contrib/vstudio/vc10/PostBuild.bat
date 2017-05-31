@ECHO OFF

SET SRC_INC_DIR=..\..\..

SET SRC_DBG_x86_DIR=.\x86\ZlibStatDebug
SET SRC_REL_x86_DIR=.\x86\ZlibStatRelease
SET SRC_DBG_x64_DIR=.\x64\ZlibStatDebug
SET SRC_REL_x64_DIR=.\x64\ZlibStatRelease

SET LIB_DEST_x86_DIR=D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x86
SET LIB_DEST_x64_DIR=D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x64

SET	INCDIR=\include
SET LIBDIR=\lib

SET COPYOPT=/K /R /Y


REM -- COPY headers
XCOPY "%SRC_INC_DIR%\zconf.h"				%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\zlib.h"				%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\zconf.h"				%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\zlib.h"				%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT%

REM -- COPY libraries
XCOPY "%SRC_DBG_x86_DIR%\zlibstat_d.lib"	%LIB_DEST_x86_DIR%%LIBDIR% %COPYOPT%
XCOPY "%SRC_REL_x86_DIR%\zlibstat_o.lib"	%LIB_DEST_x86_DIR%%LIBDIR% %COPYOPT%
XCOPY "%SRC_DBG_x64_DIR%\zlibstat_d.lib"	%LIB_DEST_x64_DIR%%LIBDIR% %COPYOPT%
XCOPY "%SRC_REL_x64_DIR%\zlibstat_o.lib"	%LIB_DEST_x64_DIR%%LIBDIR% %COPYOPT%
