.all: \
  .\Tale.dll \
  .\Tale.lib \
  .\DTale.exe \
  .\STale.exe

INCLUDE = E:\BC20\INCLUDE;E:\OCL\INCLUDE
LIB = E:\BC20\LIB
PATH = E:\BC20\BIN;$(PATH)

.SUFFIXES:

.SUFFIXES: .cpp .cxx

{..\Source}.cpp.obj:
   bcc.exe -Vmv -Jgd -sm -Otex -4 -K- -P -c -x -w-pia %s

{..\Source}.cxx.obj:
   bcc.exe -D__BUILD_DLL__ -Vmv -Jgd -sm -sd -Otex -4 -K- -P -c -x -w-pia %s

.\Tale.dll: \
  .\Taledll.obj \
  Borland.mak
   tlink.exe /c /Tod C02D .\Taledll.obj, .\Tale.dll,.\Tale.MAP, C2MT OS2

.\Tale.lib: \
  .\Tale.dll \
  Borland.mak
    implib.exe .\Tale.lib .\Tale.dll

.\DTale.exe: \
    .\DTale.obj \
    {$(LIB)}Tale.lib \
    Borland.mak
   tlink.exe /c /Toe C02 .\DTale.obj, .\DTale.exe,.\DTale.MAP, Tale C2MT OS2

.\STale.exe: \
    .\STale.obj \
    Borland.mak
   tlink.exe /c /Toe C02 .\STale.obj, .\STale.exe,.\STale.MAP, C2MT OS2

!include Borland.Dep
