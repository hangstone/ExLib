@ECHO OFF

SET SRC_INC_DIR=.\libtiff

SET SRC_LIB_DIR=.\libtiff

SET LIB_DEST_x86_DIR=D:\Project\Common\Lib\External_Lib\libtiff\v3.9.4\x86
SET LIB_DEST_x64_DIR=D:\Project\Common\Lib\External_Lib\libtiff\v3.9.4\x64

SET	INCDIR=\include
SET LIBDIR=\lib

SET COPYOPT_ALL=/e /h /k /y
SET COPYOPT=/K /R /Y /i


REM -- COPY headers
XCOPY "%SRC_INC_DIR%\tiff.h"				%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\tiffconf.h"			%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\tiffio.h"				%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\tiffvers.h"			%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\tiff.h"				%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\tiffconf.h"			%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\tiffio.h"				%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT%
XCOPY "%SRC_INC_DIR%\tiffvers.h"			%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT%

REM -- COPY libraries
XCOPY "%SRC_LIB_DIR%\libtiff_x86_dbg.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\ibtiff_d.lib %COPYOPT%
XCOPY "%SRC_LIB_DIR%\libtiff_x86_rel.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\ibtiff_o.lib %COPYOPT%
XCOPY "%SRC_LIB_DIR%\libtiff_x64_dbg.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\ibtiff_d.lib %COPYOPT%
XCOPY "%SRC_LIB_DIR%\libtiff_x64_rel.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\ibtiff_o.lib %COPYOPT%

