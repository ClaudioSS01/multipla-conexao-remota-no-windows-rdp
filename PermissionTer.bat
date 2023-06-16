net stop /Y TermService
takeown /F c:\Windows\System32\termsrv.dll /A
icacls c:\Windows\System32\termsrv.dll /grant Administrators:F
copy /Y \\192.168.11.250\Source\Soft\WindowNew\RDPWrap-v1.6.2\rdpwrap.ini "C:\Program Files\RDP Wrapper\"
copy /Y \\192.168.11.250\Source\Soft\WindowNew\RDPWrap-v1.6.2\termsrv.dll "C:\Windows\System32\"
net start /Y TermService