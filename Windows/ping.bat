@ECHO OFF
set IPADDRESS=yoursitename.com
set INTERVAL=240 
:PINGINTERVAL
curl -w "@%~dp0curl-format.txt" -o NUL -s %IPADDRESS%
timeout %INTERVAL%
GOTO PINGINTERVAL
