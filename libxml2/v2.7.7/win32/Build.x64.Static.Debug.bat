REM -- cscript configure.js 
REM -- compiler=msvc 
REM -- cruntime=/MTd 
REM -- prefix="..\x86_static_debug" 
REM -- iconv=yes 
REM -- zlib=yes 
REM -- static=yes 
REM -- include="D:\Project\Common\Lib\External_Lib\libiconv\x86\include";
REM --         "D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x86\include" 
REM -- lib="D:\Project\Common\Lib\External_Lib\libiconv\x86\lib";
REM --     "D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x86\lib" 
REM -- debug=yes

nmake clean
cscript configure.x64.Static.Debug.js compiler=msvc cruntime=/MTd prefix="..\x64_static_debug" iconv=yes zlib=yes static=yes include="D:\Project\Common\Lib\External_Lib\libiconv\x64\include";"D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x64\include" lib="D:\Project\Common\Lib\External_Lib\libiconv\x64\lib";"D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x64\lib" debug=yes
nmake
nmake install