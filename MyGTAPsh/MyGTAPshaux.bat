Rem  Last Update 4/21/2016

rem --------------- STAGE 1
del *.bak
del *.log
del *.flg

rem ensures you do not run this twice and stuff up your data by accident
if exist setsorig.har goto stage2

rem makes copies of original files to use
copy sets.har setsorig.har
copy default.prm defaultorig.prm
copy basedata.har baseorig.har

rem --------------- STAGE 2
:stage2
rem creates the MyGTAP database
extraagg.EXE -cmf extraagg.cmf 
if errorlevel 1 goto error
mygtapdata.EXE -cmf mygtapdata.cmf 
if errorlevel 1 goto error
mygtapsets.EXE -cmf mygtapsets.cmf 
if errorlevel 1 goto error

rem copies new data to original files ready for RunGTAP
copy setsnew.har sets.har
copy defaultnew.prm default.prm
copy basedatanew.har basedata.har

rem deletes working files
del setsnew.har 
del defaultnew.prm 
del basedatanew.har 
del extradat.har 

rem --------------- STAGE 2
rem prepares RunGTAP application
..\altpar.exe -cmf altpar.cmf >nul
if errorlevel 1 goto error
gtpvewmy.exe -cmf gtpvewmy.cmf >nul
if errorlevel 1 goto error
samview -cmf samview.cmf >nul
if errorlevel 1 goto error
shocksmy.exe -sti shocksmy.sti
if errorlevel 1 goto error

rem BATCH JOB SUCCESSFUL
echo off
goto endbat

:error0
echo off
echo ###### ERROR: BATCH JOB FAILED #####
echo You have not included the relevant file extradat0.har.  This is the 
GTAP v7 database file that contains the header VBFP for BOP data
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
