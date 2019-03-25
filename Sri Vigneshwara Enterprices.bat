if not "%minimized%"=="" goto :minimized
set minimized=true
@echo off

cd "C:\Users\B.V.MADWESH\Desktop\Sri Vigneshwara Enterprices"

start /min cmd /C "npm start"
start chrome http://localhost:3002/
goto :EOF
:minimized