@echo off
:: Usage:
:: ./firefoxSetup.sh <username of new firefox profile>
::

:: TODO:
:: Delete check for Firefox installation.
:: (because it can be on another disk than C:)
:: and instead let the user enter the Firefox path,
:: e.g., C:Program Files, and then just install arkenfox/user.js.

set firefox_installed = false
set firefox32 = false
set firefox64 = false
if not exist "C:\Program Files\Mozilla Firefox\firefox.exe" (
	set firefox_installed = true
	set firefox64 = true
)
if not exist "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" (
	set firefox_installed = true
	set firefox32 = true
)

if "%firefox_installed" == true echo Firefox is not installed. Please install it.

if "%1" == "" echo No argument supplied

if "%firefox64% == true (
	start "C:\Program Files\Mozilla Firefox\firefox.exe"
)
if "%firefox32% == true (
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
)