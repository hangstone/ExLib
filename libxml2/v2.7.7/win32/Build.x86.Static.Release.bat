nmake clean
cscript configure.x86.Static.Release.js compiler=msvc cruntime=/MT prefix="..\x86_static_release" iconv=yes zlib=yes static=yes include="D:\Project\Common\Lib\External_Lib\libiconv\x86\include";"D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x86\include" lib="D:\Project\Common\Lib\External_Lib\libiconv\x86\lib";"D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x86\lib" debug=no
nmake
nmake install