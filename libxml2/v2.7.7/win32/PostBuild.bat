@ECHO OFF

REM --
REM --	Caution!!
REM --	first, libconv lib. was built & copied libraries in a specific directory
REM --	second, execute this batch file
REM --

REM --	for libxml2
SET SRC_INC_DBG_x86_DIR=..\x64_static_debug\include
SET SRC_INC_DBG_x64_DIR=..\x64_static_release\include
SET SRC_INC_REL_x86_DIR=..\x86_static_debug\include
SET SRC_INC_REL_x64_DIR=..\x86_static_release\include

SET SRC_LIB_DBG_x86_DIR=..\x64_static_debug\lib
SET SRC_LIB_DBG_x64_DIR=..\x64_static_release\lib
SET SRC_LIB_REL_x86_DIR=..\x86_static_debug\lib
SET SRC_LIB_REL_x64_DIR=..\x86_static_release\lib

SET LIB_DEST_x86_DIR=D:\Project\Common\Lib\External_Lib\libxml2\v2.7.7\x86
SET LIB_DEST_x64_DIR=D:\Project\Common\Lib\External_Lib\libxml2\v2.7.7\x64

REM --	for libiconv
SET SRC_ICONV_INC_x86_DIR=D:\Project\Common\Lib\External_Lib\libiconv\x86
SET SRC_ICONV_INC_x64_DIR=D:\Project\Common\Lib\External_Lib\libiconv\x64

SET SRC_ICONV_LIB_x86_DIR=D:\Project\Common\Lib\External_Lib\libiconv\x86\lib
SET SRC_ICONV_LIB_x64_DIR=D:\Project\Common\Lib\External_Lib\libiconv\x64\lib

SET	INCDIR=\include\
SET LIBDIR=\lib

SET COPYOPT_ALL=/e /h /k /y
SET COPYOPT=/K /R /Y /i


REM -- COPY headers
XCOPY "%SRC_INC_DBG_x86_DIR%\*.*"			%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT_ALL%
XCOPY "%SRC_INC_DBG_x64_DIR%\*.*"			%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT_ALL%
XCOPY "%SRC_INC_REL_x86_DIR%\*.*"			%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT_ALL%
XCOPY "%SRC_INC_REL_x64_DIR%\*.*"			%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT_ALL%

REM -- COPY libraries
XCOPY "%SRC_LIB_DBG_x86_DIR%\libxml2_a.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\libxml2_d.* %COPYOPT%
XCOPY "%SRC_LIB_DBG_x64_DIR%\libxml2_a.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\libxml2_d.* %COPYOPT%
XCOPY "%SRC_LIB_REL_x86_DIR%\libxml2_a.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\libxml2_o.* %COPYOPT%
XCOPY "%SRC_LIB_REL_x64_DIR%\libxml2_a.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\libxml2_o.* %COPYOPT%

REM -- COPY headers (libiconv)
XCOPY "%SRC_ICONV_INC_x86_DIR%%INCDIR%iconv.h"		%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT_ALL%
XCOPY "%SRC_ICONV_INC_x86_DIR%%INCDIR%iconv.h"		%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT_ALL%

REM -- COPY libraries (libiconv)
XCOPY "%SRC_ICONV_LIB_x86_DIR%\libiconv_d.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\libiconv_d.* %COPYOPT%
XCOPY "%SRC_ICONV_LIB_x64_DIR%\libiconv_d.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\libiconv_d.* %COPYOPT%
XCOPY "%SRC_ICONV_LIB_x86_DIR%\libiconv_o.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\libiconv_o.* %COPYOPT%
XCOPY "%SRC_ICONV_LIB_x64_DIR%\libiconv_o.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\libiconv_o.* %COPYOPT%
