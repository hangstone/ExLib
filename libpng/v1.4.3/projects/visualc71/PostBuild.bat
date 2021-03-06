@ECHO OFF

SET SRC_INC_DIR=..\..

SET SRC_DBG_x86_DIR=.\Win32_LIB_Debug
SET SRC_REL_x86_DIR=.\Win32_LIB_Release
SET SRC_DBG_x64_DIR=.\x64\LIB Debug x64
SET SRC_REL_x64_DIR=.\x64\LIB Release x64

SET LIB_DEST_x86_DIR=D:\Project\Common\Lib\External_Lib\libpng\x86\
SET LIB_DEST_x64_DIR=D:\Project\Common\Lib\External_Lib\libpng\x64\

SET	INCDIR=\include
SET LIBDIR=\lib

SET COPYOPT=/K /R /Y


REM -- COPY headers
XCOPY "%SRC_INC_DIR%\png.h"					%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\pngconf.h"				%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\pngpriv.h"				%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\png.h"					%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\pngconf.h"				%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\pngpriv.h"				%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT%

REM -- COPY libraries
XCOPY "%SRC_DBG_x86_DIR%\libpng_d.lib"		%LIB_DEST_x86_DIR%%LIBDIR% %COPYOPT%
XCOPY "%SRC_REL_x86_DIR%\libpng_o.lib"		%LIB_DEST_x86_DIR%%LIBDIR% %COPYOPT%
XCOPY "%SRC_DBG_x64_DIR%\libpng_d.lib"		%LIB_DEST_x64_DIR%%LIBDIR% %COPYOPT%
XCOPY "%SRC_REL_x64_DIR%\libpng_o.lib"		%LIB_DEST_x64_DIR%%LIBDIR% %COPYOPT%
