.all: \
  .\Tale.dll \
  .\Tale.lib \
  .\DTale.exe \
  .\STale.exe

.SUFFIXES:

.SUFFIXES: .cpp .cxx

{..\Source}.cpp.obj:
      icc.exe /Tdp /Q /O /Gm /G5 /C %s

{..\Source}.cxx.obj:
      icc.exe /D__BUILD_DLL__ /Tdp /Q /O /Gm /Ge- /G5 /C %s

.\Tale.dll: \
  .\Taledll.obj \
  .\Taledll.def \
  IBM.mak
    icc.exe @<<
/Tdp /Q
 /O /Gm /G5
 /B" /f /do /nologo"
 /FeTale.dll
 .\Taledll.obj
 .\Taledll.def
<<

.\Tale.lib: \
  .\Tale.dll \
  IBM.mak
    implib /NOL /NOI .\Tale.lib .\Tale.dll

.\DTale.exe: \
    .\DTale.obj \
    {$(LIB)}tale.lib \
    IBM.mak
      icc.exe @<<
/Tdp /Q 
 /Fi /Si 
 /O /Gm /G5 
 /Gx 
 /B" /f /do /nologo"
 /FeDTale.exe
 .\DTale.obj
 .\tale.lib
<<

.\STale.exe: \
    .\STale.obj \
    IBM.mak
      icc.exe @<<
/Tdp /Q
 /Fi /Si
 /O /Gm /G5
 /Gx
 /B" /f /do /nologo"
 /FeSTale.exe
 .\STale.obj
<<

!include IBM.Dep
