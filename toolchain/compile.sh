clear
pgrep u64view || ./u64view/u64view -u u64.lab.home -z 3 -t
java -jar ./KickAssembler/KickAss.jar ../source/main.asm -showmem
./1541ultimate2-tools/1541u2.pl u64.lab.home -c run:../source/main.prg

# @echo off
# cls
# tasklist /fi "ImageName eq U64-Streamer.exe" | find /I "U64-Streamer.exe">NUL
# if NOT "%ERRORLEVEL%"=="0" start /b .\u64-streamer-v125\U64-Streamer.exe
# java -jar .\KickAssembler\KickAss.jar ..\source\main.asm -showmem 
# if %errorlevel%==0 .\1541ultimate2-tools\1541u2.exe u64.lab.home -c run:..\source\main.prg
# if %errorlevel%==0 pause
# ./compile.cmd
