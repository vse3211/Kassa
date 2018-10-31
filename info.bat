echo off
call %1.bat
echo Информация о товаре:
echo ID: %1
echo Цена: %price%
echo Наименование: %name%
echo Количество: %count%
if %removed% == 1 (echo Внимание! Товар был удален ранее.)