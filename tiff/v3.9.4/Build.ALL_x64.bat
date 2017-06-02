@ECHO OFF

nmake /f Makefile_x64_dbg.vc clean

nmake /f Makefile_x64_dbg.vc DEBUG=1

nmake /f Makefile_x64_rel.vc clean

nmake /f Makefile_x64_rel.vc