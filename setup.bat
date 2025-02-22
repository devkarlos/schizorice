@ECHO OFF

:: Close all instances of Visual Studio
TASKKILL /IM devenv.exe /F
TIMEOUT /T 2

:::::::::::::::::::
:: File explorer ::
:::::::::::::::::::

:: Remove Gallery and Home Folder
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{f874310e-b6b7-47dc-bc84-b9e6b38f5903}" /F

:: Remove ShareX folder from Documents
REG ADD "HKLM\SOFTWARE\ShareX" /F
REG ADD "HKLM\SOFTWARE\ShareX" /V PersonalPath /T REG_SZ /D "%APPDATA%\ShareX" /F

:: Remove Visual Studio 2022 folder from Documents
REG ADD "HKCU\" /V VisualStudioLocation /T REG_SZ /D "%APPDATA%\Visual Studio 2022" /F

::::::::::::::::
:: Start Menu ::
::::::::::::::::

:: 7-Zip
RD /S /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip"

:: BCUninstaller
MOVE "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\BCUninstaller\*.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
RD /S /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\BCUninstaller"

:: BleachBit
SET BLEACHBIT_PATH="%APPDATA%\Microsoft\Windows\Start Menu\Programs\BleachBit"
MOVE "%BLEACHBIT_PATH%\*.lnk" "%APPDATA%\Microsoft\Windows\Start Menu\Programs"
RD /S /Q %BLEACHBIT_PATH%

::::::::::::::::::
:: Context Menu ::
::::::::::::::::::

:: Remove Git
REG DELETE "HKEY_CLASSES_ROOT\Directory\shell\git_gui" /F
REG DELETE "HKEY_CLASSES_ROOT\Directory\shell\git_shell" /F
REG DELETE "HKEY_CLASSES_ROOT\LibraryFolder\background\shell\git_gui" /F
REG DELETE "HKEY_CLASSES_ROOT\LibraryFolder\background\shell\git_shell" /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\git_gui" /F
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\git_shell" /F

:: Remove Share
REG DELETE "HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" /F

ECHO Setup complete
PAUSE
