tablo -wfp gtpvewmy > gtpvewmy.log
if errorlevel 1 goto error
call ltg gtpvewmy
if errorlevel 1 goto error

tablo -wfp samview > samview.log
if errorlevel 1 goto error
call ltg samview
if errorlevel 1 goto error

tablo -wfp shocksmy > shocksmy.log
if errorlevel 1 goto error
call ltg shocksmy
if errorlevel 1 goto error

tablo -sti gtapmy.sti > gtapmy.log
if errorlevel 1 goto error
call ltg gtapmy
if errorlevel 1 goto error

tablo -wfp gtpvolmy > gtpvolmy.log
if errorlevel 1 goto error
call ltg gtpvolmy
if errorlevel 1 goto error

tablo -wfp decompmy > decompmy.log
if errorlevel 1 goto error
call ltg decompmy
if errorlevel 1 goto error

tablo -wfp extraagg > extraagg.log
if errorlevel 1 goto error
call ltg extraagg
if errorlevel 1 goto error

tablo -wfp mygtapdata > mygtapdata.log
if errorlevel 1 goto error
call ltg mygtapdata
if errorlevel 1 goto error

tablo -wfp mygtapsets > mygtapsets.log
if errorlevel 1 goto error
call ltg mygtapsets
if errorlevel 1 goto error

rem BATCH JOB SUCCESSFUL
echo off
goto endbat

:error1
echo off
echo ###### ERROR: BATCH JOB FAILED #####
echo Issue is with creating database.  
echo Check log file; most recent is listed last
dir/od *.log
dir/od *.log >err.flg
goto endbat

:error
echo off
echo ###### ERROR: BATCH JOB FAILED #####
echo Check log file; most recent is listed last
dir/od *.log
dir/od *.log >err.flg
rem echo Please press CTRL-C to terminate batch job
rem pause

:endbat
