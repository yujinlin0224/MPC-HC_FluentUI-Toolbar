@echo off

if exist "%ProgramFiles%\MPC-HC" (
  copy /y "toolbar*.svg" "%ProgramFiles%\MPC-HC"
)

if exist "%ProgramFiles(x86)%\MPC-HC" (
  copy /y "toolbar*.svg" "%ProgramFiles(x86)%\MPC-HC"
)

if exist "%ProgramFiles%\K-Lite Codec Pack\MPC-HC" (
  copy /y "toolbar*.svg" "%ProgramFiles%\K-Lite Codec Pack\MPC-HC"
)

if exist "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64" (
  copy /y "toolbar*.svg" "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64"
)