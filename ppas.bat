@echo off
SET THEFILE=C:\Documents and Settings\ERTUNC.EFEOGLU\Desktop\Temp\project1.exe
echo Linking %THEFILE%
"C:\Documents and Settings\ERTUNC.EFEOGLU\Desktop\LazarusPortable\App\lazarus\fpc\2.6.0\bin\i386-win32\ld.exe" -b pei-i386 -m i386pe  --gc-sections   --subsystem windows --entry=_WinMainCRTStartup    -o "C:\Documents and Settings\ERTUNC.EFEOGLU\Desktop\Temp\project1.exe" link.res
if errorlevel 1 goto linkend
"C:\Documents and Settings\ERTUNC.EFEOGLU\Desktop\LazarusPortable\App\lazarus\fpc\2.6.0\bin\i386-win32\postw32.exe" --subsystem gui --input "C:\Documents and Settings\ERTUNC.EFEOGLU\Desktop\Temp\project1.exe" --stack 16777216
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
