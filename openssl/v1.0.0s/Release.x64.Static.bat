REM -- 빌드 옵션 설정
perl Configure VC-WIN64A --prefix=D:\Project\common\External_Lib\openssl\v1.0.0s\Release_x64_Static

REM -- makefile 생성을 위한 배치파일 실행
call ms\do_win64a

REM -- run make file
nmake -f ms\nt.mak

REM -- run make install
nmake -f ms\nt.mak install

REM -- delte temporary files & directories
del ms\nt.mak
del /s /q out32
rmdir /s /q out32
del /s /q tmp32
rmdir /s /q tmp32
del /s /q inc32
rmdir /s /q inc32

