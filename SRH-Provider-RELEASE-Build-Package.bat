@echo off
setlocal enabledelayedexpansion

set "file=BaseFile"
set "file_dest=SRH-Provider-Installer-master.nsi"
(
		for /f "tokens=*" %%i in (%file%) do (
						set "s=%%i"
						set "s=!s:pro_xxx=SRH-Provider-Installer-master!"
						echo !s!
		)
)>%file_dest%
SRH-Provider-forwindows-Package\makensis.exe ^
/DSRH-project="%1" ^
/DSRH-version="V%2" ^
/DSRH-date="%Date:~0,4%%Date:~5,2%%Date:~8,2%" ^
SRH-Provider-Installer-master.nsi
del /f /q "SRH-Provider-Installer-master.nsi" 