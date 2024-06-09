:: Auto Close for EKSA ToneTuningTool by Jackson92
:: Github: https://github.com/92jackson/auto-close-eksa-tone-tuning-tool
:: Discord: https://discord.gg/e3eXGTJbjx 
@echo off
setlocal

:LOOP
:: Check if ToneTuningTool.exe is running
tasklist /FI "IMAGENAME eq ToneTuningTool.exe" 2>NUL | find /I /N "ToneTuningTool.exe">NUL
if "%ERRORLEVEL%"=="0" (
	echo ToneTuningTool.exe is running.

	:: Short delay to ensure app fully opened and splash closed	
	timeout /t 2 >nul

	:: Use PowerShell to close the window
	powershell -command "& { Get-Process -Name 'ToneTuningTool' | ForEach-Object { $_.CloseMainWindow() } }"

	echo ToneTuningTool.exe has been minimized.
	goto :ENDLOOP
) else (
	echo ToneTuningTool.exe is not running. Waiting for it to start...

	:: Half-second delay
	for /l %%i in (1,1,5) do (
		ping -n 1 127.0.0.1 >nul
	)

	goto :LOOP
)

:ENDLOOP
endlocal
