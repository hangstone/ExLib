nmake clean
cscript configure.x64.Static.Release.js compiler=msvc cruntime=/MT prefix="..\x64_static_release" iconv=yes zlib=yes static=yes include="D:\Project\Common\Lib\External_Lib\libiconv\x64\include";"D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x64\include" lib="D:\Project\Common\Lib\External_Lib\libiconv\x64\lib";"D:\Project\Common\Lib\External_Lib\zlib\v1.2.5\x64\lib" debug=no
nmake
nmake install