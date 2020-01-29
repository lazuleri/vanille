<# : encoder.bat
set "s=-ss %s%"
set "t=-t %t%"
if %f% geq 50 set f=50
if %w% equ %$w% set w=-1
if %h% equ %$h% set h=-1
goto enc_%_enc%
pause
goto :eof

:enc_0
cls
echo writing %file%....
ffmpeg %s% %t% -i "%src%" -vsync vfr -r %f% -vf "scale=%w%:%h%:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop %loops% -y "%file%"
goto :eof

:enc_1
cls
echo writing %file%....
md _temp
ffmpeg %s% %t% -i "%src%" -vsync vfr -r %f% -vf "scale=%w%:%h%:flags=lanczos" "_temp\frames%%04d.png"
gifski --fps %f% -o "%file%" _temp\frames*.png
if exist "%file%" rd /s /q _temp
goto :eof
#>