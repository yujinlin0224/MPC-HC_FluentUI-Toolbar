@echo off

setlocal EnableDelayedExpansion

set Filenames=2
set Filenames[1]=toolbar.svg
set Filenames[2]=toolbar_dark.svg

set ProgramDirPaths=5
set ProgramDirPaths[1]=%ProgramFiles%\MPC-HC
set ProgramDirPaths[2]=%ProgramFiles(x86)%\MPC-HC
set ProgramDirPaths[3]=%ProgramFiles%\K-Lite Codec Pack\MPC-HC
set ProgramDirPaths[4]=%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC
set ProgramDirPaths[5]=%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64

for /l %%i in (1,1,%ProgramDirPaths%) do (
  if exist "!ProgramDirPaths[%%i]!" (
    for /l %%j in (1,1,%Filenames%) do (
      if exist "!ProgramDirPaths[%%i]!\!Filenames[%%j]!" (
        copy /y "!ProgramDirPaths[%%i]!\!Filenames[%%j]!" "!ProgramDirPaths[%%i]!\!Filenames[%%j]!.bak"
      )
      copy /y "%~dp0\!Filenames[%%j]!" "!ProgramDirPaths[%%i]!"
    )
  )
)
