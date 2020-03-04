@echo off
cls

:menu
title BetterAIK - Start Menu
cls
set M=
echo.
echo ==============================
echo BetterAIK Menu v1.0
echo ==============================
echo Start Menu
echo ==============================
echo.
echo 1 - Unpack Image
echo 2 - Repack Image
echo 3 - Cleanup
echo X - Exit
echo.
set /P M="Input options shown above then press ENTER: "
if %M%==1 GOTO unpackimg
if %M%==2 GOTO repcakimg
if %M%==3 GOTO cleanup
if %M%==X exit
if %M%==x exit
cls
title BetterAIK - Wrong Input
cls
echo You have inputted a wrong input, try again.
choice /d y /t 2 > nul
set M=
goto menu

:unpackimg
title BetterAIK - Unpack Image
cls
set M=
echo.
echo ==============================
echo BetterAIK Menu v1.0
echo ==============================
echo Unpack Image
echo ==============================
echo.
set /P M="Please drag and drop the image you want to unpack into this window then press ENTER."
echo unpackimg.bat %M% >> working.bat
call working.bat

:repackimg
title BetterAIK - Repack Image
cls
set M=
echo.
echo ==============================
echo BetterAIK Menu v1.0
echo ==============================
echo Repack Image
echo ==============================
echo.
set /P M="Please drag and drop the image you want to repack into this window then press ENTER."
echo repackimg.bat %M% >> working.bat
call working.bat

:cleanup
title BetterAIK - Cleanup
cls
set M=
echo.
echo ==============================
echo BetterAIK Menu v1.0
echo ==============================
echo Cleanup
echo ==============================
call cleanup.bat
