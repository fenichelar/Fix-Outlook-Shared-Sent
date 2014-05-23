@echo off

set val=""
for /f "tokens=2*" %%a in ('REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Office\14.0\Outlook\Preferences" /v "DelegateSentItemsStyle"') do set "val=%%~b"
if "%val%"=="""" (
	REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Office\14.0\Outlook\Preferences" /v "DelegateSentItemsStyle" /t "REG_DWORD" /d "1"
)

set val=""
for /f "tokens=2*" %%a in ('REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Outlook\Preferences" /v "DelegateSentItemsStyle"') do set "val=%%~b"
if "%val%"=="""" (
	REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Outlook\Preferences" /v "DelegateSentItemsStyle" /t "REG_DWORD" /d "1"
)