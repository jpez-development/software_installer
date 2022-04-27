::==============================================
::The code below installs chocolatey and python
::then runs the python script
::==============================================

::Install chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
::Install python
choco install python
::Run python script
python %~dp0install.py %~dp0
::Notify user of completion with a message box
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Installation Complete', 'Software Install', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
::pause the shell
pause
