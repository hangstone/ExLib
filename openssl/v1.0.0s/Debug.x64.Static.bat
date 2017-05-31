REM -- 빌드 옵션 설정
perl Configure debug-VC-WIN64A --prefix=D:\Project\common\External_Lib\openssl\v1.0.0s\Debug_x64_Static

REM -- makefile 생성을 위한 배치파일 실행
call ms\do_win64a

REM -- debug symbol 저장을 위해 compile option을 수정해 줌 (ms\nt.mak)
setlocal enableextensions disabledelayedexpansion
set "search=/Zi"
set "replace=/Z7"
set "textFile=%~dp0ms\nt.mak"

for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >> "%textFile%" echo(!line:%search%=%replace%!
    endlocal
)

setlocal enableextensions disabledelayedexpansion
set "search=ml64 /c /Cp /Cx /Z7"
set "replace=ml64 /c /Cp /Cx /Zi"
set "textFile=%~dp0ms\nt.mak"

for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >> "%textFile%" echo(!line:%search%=%replace%!
    endlocal
)

REM -- run make file
nmake -f ms\nt.mak

REM -- run make install
nmake -f ms\nt.mak install

REM -- delte temporary files & directories
del ms\nt.mak
del /s /q out32.dbg
rmdir /s /q out32.dbg
del /s /q tmp32.dbg
rmdir /s /q tmp32.dbg
del /s /q inc32
rmdir /s /q inc32