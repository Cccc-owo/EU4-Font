:check
@ECHO OFF
ECHO Time:%date%
ECHO Checking...
if not exist output\ ( mkdir output\ ) else ( del /F /S /Q output\ & rmdir /S /Q output\ & mkdir output\ )
if exist *.zip del /F /S /Q *.zip
goto select

:select
if exist output/font-GongWenKaiTi.mod ( ECHO. ) else ( goto set_GongWenKaiTi )
if exist output/font-GuDianMingChaoTi.mod ( ECHO. ) else ( goto set_GuDianMingChaoTi )
if exist output/font-KangXiZiDianTi.mod ( ECHO. ) else ( goto set_KangXiZiDianTi )
if exist output/font-LiShu.mod ( ECHO. ) else ( goto set_LiShu )
if exist output/font-Source-Han-Serif.mod ( ECHO. ) else ( goto set_Source-Han-Serif )
goto end

:set_GongWenKaiTi
set mod_desc=font-GongWenKaiTi.mod
set mod_dir=font-GongWenKaiTi
goto process

:set_GuDianMingChaoTi
set mod_desc=font-GuDianMingChaoTi.mod
set mod_dir=font-GuDianMingChaoTi
goto process

:set_KangXiZiDianTi
set mod_desc=font-KangXiZiDianTi.mod
set mod_dir=font-KangXiZiDianTi
goto process

:set_LiShu
set mod_desc=font-LiShu.mod
set mod_dir=font-LiShu
goto process

:set_Source-Han-Serif
set mod_desc=font-Source-Han-Serif.mod
set mod_dir=font-Source-Han-Serif
goto process

:process
if not exist output\%mod_dir% mkdir output\%mod_dir%\
xcopy %mod_dir%\ output\%mod_dir% /E /Q /C /Y
xcopy mod_descriptor\%mod_desc% output\ /E /Q /C /Y
ECHO path="mod/%mod_dir%">> output\%mod_desc%
xcopy mod_descriptor\%mod_desc% output\%mod_dir%\ /Q /C /Y
ren output\%mod_dir%\%mod_desc% descriptor.mod
ECHO.
ECHO Compressing the mod files...
7z.exe a %mod_dir%.zip .\output\%mod_dir%*
goto select

:end
ECHO.
ECHO End of script running.