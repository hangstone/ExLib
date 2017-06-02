@ECHO OFF

nmake /f Makefile_x86_dbg.vc clean

nmake /f Makefile_x86_dbg.vc DEBUG=1

nmake /f Makefile_x86_rel.vc clean

nmake /f Makefile_x86_rel.vc