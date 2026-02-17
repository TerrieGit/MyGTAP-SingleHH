Rem  Last Update 4/21/2016

rem --------------- STAGE 1
rem ensures you are using the correct extra data to go with your version.

echo off
echo please input the GTAP version. Versions available include 9a (for v9a)
echo off
set /p version=

echo please input the year of your data.  Years available include 2011 or 2007
echo off
set /p year=

del extradata0.har

copy extradatav%version%_%year%.har extradata0.har
if errorlevel 1 goto error1

rem --------------- STAGE 2
del *.bak
del *.log
del *.flg

rem ensures you do not run this twice and stuff up your data by accident
if exist setsorig.har goto skip

rem makes copies of original files to use
copy sets.har setsorig.har
copy default.prm defaultorig.prm
copy basedata.har baseorig.har

:skip
rem creates the MyGTAP database
extraagg.EXE -cmf extraagg.cmf >nul
if errorlevel 1 goto error
mygtapdata.EXE -cmf mygtapdata.cmf >nul
if errorlevel 1 goto error
mygtapsets.EXE -cmf mygtapsets.cmf >nul
if errorlevel 1 goto error

rem copies new data to original files ready for RunGTAP
copy setsnew.har sets.har
copy defaultnew.prm default.prm
copy basedatanew.har basedata.har

rem deletes working files
del setsnew.har 
del defaultnew.prm 
del basedatanew.har 
del extradata0.har 
del extradata.har 

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

:error1
echo off
echo ###### ERROR: BATCH JOB FAILED #####
echo Check version or year number
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
