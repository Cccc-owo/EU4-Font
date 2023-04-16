::=====setting environment=====
@ECHO OFF
set mod_desc=font-GongWenKaiTi.mod
set mod_dir=font-GongWenKaiTi
::=====setting environment end=====
::=====checking=====
ECHO Time:%date%
ECHO Checking the required folder...
if not exist output\ ( mkdir output\ ) else ( del /F /S /Q output\ & rmdir /S /Q output\ & mkdir output\ )
if not exist output\%mod_dir% mkdir output\%mod_dir%\
if exist *.zip del /F /S /Q *.zip
::=====checking end=====
::=====processing=====
xcopy %mod_dir%\ output\%mod_dir% /E /Q /C /Y
xcopy mod_descriptor\%mod_desc% output\ /E /Q /C /Y
ECHO path="mod/%mod_dir%" >> output\%mod_desc%
xcopy mod_descriptor\%mod_desc% output\%mod_dir%\ /Q /C /Y
ren output\%mod_dir%\%mod_desc% descriptor.mod
ECHO.
ECHO Compressing the mod files...
7z.exe a %mod_dir%.zip .\output\%mod_dir%*
::=====processing end=====

::=====setting environment=====
@ECHO OFF
set mod_desc=font-GuDianMingChaoTi.mod
set mod_dir=font-GuDianMingChaoTi
::=====setting environment end=====
::=====checking=====
ECHO Time:%date%
ECHO Checking the required folder...
if not exist output\ ( mkdir output\ ) else ( del /F /S /Q output\ & rmdir /S /Q output\ & mkdir output\ )
if not exist output\%mod_dir% mkdir output\%mod_dir%\
::=====checking end=====
::=====processing=====
xcopy %mod_dir%\ output\%mod_dir% /E /Q /C /Y
xcopy mod_descriptor\%mod_desc% output\ /E /Q /C /Y
ECHO path="mod/%mod_dir%" >> output\%mod_desc%
xcopy mod_descriptor\%mod_desc% output\%mod_dir%\ /Q /C /Y
ren output\%mod_dir%\%mod_desc% descriptor.mod
ECHO.
ECHO Compressing the mod files...
7z.exe a %mod_dir%.zip .\output\%mod_dir%*
::=====processing end=====

::=====setting environment=====
@ECHO OFF
set mod_desc=font-KangXiZiDianTi.mod
set mod_dir=font-KangXiZiDianTi
::=====setting environment end=====
::=====checking=====
ECHO Time:%date%
ECHO Checking the required folder...
if not exist output\%mod_dir% mkdir output\%mod_dir%\
::=====checking end=====
::=====processing=====
xcopy %mod_dir%\ output\%mod_dir% /E /Q /C /Y
xcopy mod_descriptor\%mod_desc% output\ /E /Q /C /Y
ECHO path="mod/%mod_dir%" >> output\%mod_desc%
xcopy mod_descriptor\%mod_desc% output\%mod_dir%\ /Q /C /Y
ren output\%mod_dir%\%mod_desc% descriptor.mod
ECHO.
ECHO Compressing the mod files...
7z.exe a %mod_dir%.zip .\output\%mod_dir%*
::=====processing end=====

::=====setting environment=====
@ECHO OFF
set mod_desc=font-Source-Han-Serif.mod
set mod_dir=font-Source-Han-Serif
::=====setting environment end=====
::=====checking=====
ECHO Time:%date%
ECHO Checking the required folder...
if not exist output\%mod_dir% mkdir output\%mod_dir%\
::=====checking end=====
::=====processing=====
xcopy %mod_dir%\ output\%mod_dir% /E /Q /C /Y
xcopy mod_descriptor\%mod_desc% output\ /E /Q /C /Y
ECHO path="mod/%mod_dir%" >> output\%mod_desc%
xcopy mod_descriptor\%mod_desc% output\%mod_dir%\ /Q /C /Y
ren output\%mod_dir%\%mod_desc% descriptor.mod
ECHO.
ECHO Compressing the mod files...
7z.exe a %mod_dir%.zip .\output\%mod_dir%*
::=====processing end=====
ECHO.
ECHO End of script running.