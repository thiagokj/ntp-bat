@echo off
w32tm /config /manualpeerlist:"pool.ntp.br" /syncfromflags:manual /reliable:YES /update
net stop w32time
net start w32time
w32tm /resync
