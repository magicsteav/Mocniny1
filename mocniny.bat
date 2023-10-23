@echo off
title 2-mocnina
echo ===========
echo   mocniny
echo ===========
echo 1=mocniny do 10
echo 2=mocniny od 10 do 20
echo 3=mocniny od 1 do 20 
set /p input=1/2/3:
if %input% == 1 goto 1
if %input% == 2 goto 2
if %input% == 3 goto 3

:1
cls
set /a seradovaci_cislo+=1
set /a number=(%RANDOM%*10/32768)+1
set /a vysledek=number*number 
set /p input=jake je 2mocnina od tohoto cisla %number%:
if %input% == %vysledek% goto ano
if not %input% == %vysledek% goto ne

:2
cls
set /a seradovaci_cislo+=1
set /a number=(%RANDOM%*10/32768)+10
set /a vysledek=number*number
set /p input=jake je 2mocnina od tohoto cisla %number%:
if %input% == %vysledek% goto ano
if not %input% == %vysledek% goto ne

:3
cls
set /a seradovaci_cislo+=1
set /a number=(%RANDOM%*20/32768)+1
set /a vysledek=number*number
set /p input=jake je 2mocnina od tohoto cisla %number%:
if %input% == %vysledek% goto ano
if not %input% == %vysledek% goto ne

:ano
cls
echo spravne!!
pause
goto end

:ne
cls
echo spatne!!
echo vysledek byl %vysledek% !!
pause
goto end

:end
if %seradovaci_cislo% == 1 goto 1
if %seradovaci_cislo% == 2 goto 2
if %seradovaci_cislo% == 3 goto 3
set /a seradovaci_cislo=0
exit
