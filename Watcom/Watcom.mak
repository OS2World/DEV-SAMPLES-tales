.all: .\Tale.dll .\Tale.lib .\DTale.exe .\STale.exe

.SUFFIXES:

.SUFFIXES: .cpp .cxx

{..\Source}.cpp.obj:
    wpp386 /otex /bm /zq /zld /zp4 /5r /mf /xs /bt=os2 %s

{..\Source}.cxx.obj:
    wpp386 /d__BUILD_DLL__ /otex /bm /zq /zld /zp4 /5r /mf /xs /bt=os2 %s

.\Tale.dll: .\Taledll.obj .\Taledll.lnk Watcom.mak
    wlink @taledll.lnk

.\Tale.lib: .\Tale.dll Watcom.mak
    wlib -n -b .\Tale.lib +.\Tale.dll

.\DTale.exe: .\DTale.obj .\DTale.lnk {$(LIB)}Tale.lib Watcom.mak
    wlink @DTale.lnk

.\STale.exe: .\STale.obj .\STale.lnk Watcom.mak
    wlink @STale.lnk

.\stale.obj: ..\Source\stale.cpp Watcom.mak
.\dtale.obj: ..\Source\dtale.cpp Watcom.mak
.\taledll.obj: ..\Source\taledll.cxx  Watcom.mak
