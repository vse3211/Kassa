echo off
title KASSA %versionSoft%
call %1.cmd
call sellID.bat
set /a sellID=%sellID%+1
echo set sellID=%sellID%>>sellID.bat
set /a total=%price%*%countTObuy%
if %count% == 0 (echo Товара нет в наличии! Пополните запасы.&&goto end)
set /a count=%count%-%countTObuy%
set /a total=%total%-%3
echo set count=%count%>>%1.cmd
cls
echo ===================>print.txt
echo %orgname%>>print.txt
echo ===================>>print.txt
echo Наименование:>>print.txt
echo %name%>>print.txt
echo.>>print.txt
echo Стоимость:>>print.txt
echo %total%>>print.txt
echo.>>print.txt
echo Дата приобритения:>>print.txt
echo %date%>>print.txt
echo %time%>>print.txt
echo.>>print.txt
echo Номер покупки:>>print.txt
echo %sellID%
echo.>>print.txt
echo СПАСИБО ЗА ПОКУПКУ!>>print.txt
echo Печать чека...
print print.txt
echo Чек распечатан
echo Сохранение информации о покупке...
echo ==============================>>%date%.txt
echo %date% %time%>>%date%.txt
echo ID: %1>>%date%.txt
echo Продано за: %total% тенге>>%date%.txt
echo В количестве: %count% шт>>%date%.txt
echo Со скидкой: %3 тенге>>%date%.txt
echo ==============================>>%date%.txt
cls
echo Платеж проведен
echo ===============
:end
if %count% == 0 (echo Платеж отменен из-за отсутствия товара.)