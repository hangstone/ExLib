@ECHO OFF

SET SRC_INC_DBG_x86_DIR=.\Debug_x86_Static\include\openssl
SET SRC_INC_DBG_x64_DIR=.\Debug_x64_Static\include\openssl
SET SRC_INC_REL_x86_DIR=.\Release_x86_Static\include\openssl
SET SRC_INC_REL_x64_DIR=.\Release_x64_Static\include\openssl

SET SRC_LIB_DBG_x86_DIR=.\Debug_x86_Static\lib
SET SRC_LIB_DBG_x64_DIR=.\Debug_x64_Static\lib
SET SRC_LIB_REL_x86_DIR=.\Release_x86_Static\lib
SET SRC_LIB_REL_x64_DIR=.\Release_x64_Static\lib

SET LIB_DEST_x86_DIR=D:\Project\Common\Lib\External_Lib\openssl\v1.0.0s\x86
SET LIB_DEST_x64_DIR=D:\Project\Common\Lib\External_Lib\openssl\v1.0.0s\x64

SET	INCDIR=\include\openssl
SET LIBDIR=\lib

SET COPYOPT_ALL=/e /h /k /y
SET COPYOPT=/K /R /Y /i


REM -- COPY headers
XCOPY "%SRC_INC_DBG_x86_DIR%\*.*"			%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT_ALL%
XCOPY "%SRC_INC_DBG_x64_DIR%\*.*"			%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT_ALL%
XCOPY "%SRC_INC_REL_x86_DIR%\*.*"			%LIB_DEST_x86_DIR%%INCDIR% %COPYOPT_ALL%
XCOPY "%SRC_INC_REL_x64_DIR%\*.*"			%LIB_DEST_x64_DIR%%INCDIR% %COPYOPT_ALL%

REM -- COPY libraries
XCOPY "%SRC_LIB_DBG_x86_DIR%\libeay32.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\dcmtkeay_d.* %COPYOPT%
XCOPY "%SRC_LIB_DBG_x86_DIR%\ssleay32.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\dcmtkssl_d.* %COPYOPT%
XCOPY "%SRC_LIB_DBG_x64_DIR%\libeay32.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\dcmtkeay_d.* %COPYOPT%
XCOPY "%SRC_LIB_DBG_x64_DIR%\ssleay32.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\dcmtkssl_d.* %COPYOPT%
XCOPY "%SRC_LIB_REL_x86_DIR%\libeay32.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\dcmtkeay_o.* %COPYOPT%
XCOPY "%SRC_LIB_REL_x86_DIR%\ssleay32.lib"	%LIB_DEST_x86_DIR%%LIBDIR%\dcmtkssl_o.* %COPYOPT%
XCOPY "%SRC_LIB_REL_x64_DIR%\libeay32.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\dcmtkeay_o.* %COPYOPT%
XCOPY "%SRC_LIB_REL_x64_DIR%\ssleay32.lib"	%LIB_DEST_x64_DIR%%LIBDIR%\dcmtkssl_o.* %COPYOPT%
