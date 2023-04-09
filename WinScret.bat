@echo off
color a
@echo off
title Scan!_C0mputer
@echo off

:: Create a log file for the scan results
set log_file=%cd%\\scan_results.txt
echo Scan Results > %log_file%
echo ---------------------------------- >> %log_file%

:: Check for malware using Windows Defender
echo Checking for malware with Windows Defender...
echo. >> %log_file%
echo Windows Defender Results >> %log_file%
echo ---------------------------------- >> %log_file%
"%ProgramFiles%\\Windows Defender\\MpCmdRun.exe" -Scan -ScanType 2 >> %log_file%
echo. >> %log_file%

:: Check for disk errors using chkdsk
echo Checking for disk errors with chkdsk...
echo. >> %log_file%
echo chkdsk Results >> %log_file%
echo ---------------------------------- >> %log_file%
chkdsk C: /f /r >> %log_file%
echo. >> %log_file%

:: Check for system file corruption using sfc
echo Checking for system file corruption with sfc...
echo. >> %log_file%
echo sfc Results >> %log_file%
echo ---------------------------------- >> %log_file%
sfc /scannow >> %log_file%
echo. >> %log_file%

:: Scan for open ports using netstat
echo Scanning for open ports with netstat...
echo. >> %log_file%
echo Open Ports >> %log_file%
echo ---------------------------------- >> %log_file%
netstat -ano >> %log_file%
echo. >> %log_file%

echo Scan complete. Results logged to %log_file%
pause
