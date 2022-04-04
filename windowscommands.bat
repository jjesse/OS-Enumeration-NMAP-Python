FOR /F "tokens=*" %%a in ('hostname') do SET filevar=%%a
set "filename=%filevar%.txt"
hostname > %filename%
ver >> %filename%
ipconfig /all >> %filename%
powershell get-localuser >> %filename%
powershell get-localgroup >> %filename%
more C:\Windows\System32\drivers\etc\hosts >> %filename%
net start >> %filename%
netstat -an >> %filename%
xcopy /I /F .\%filename% \\192.168.1.1\ADMIN$\..\Results\%filename%