echo off
chcp 866
call settings.bat

:main
call clean.bat
cls
if %debug% == 1 (echo WARNING! Debug mode is enabled.)
echo 1. Касса
echo 2. Возврат товара
echo 3. Добавить товар
echo 4. Информация о товаре
echo 5. Удаление товара
echo 6. Настройка магазина
echo 7. Закрыть смену
set /p choise=Номер модуля: 
if %choise% == 1 (goto kassa)
if %choise% == 2 (goto return)
if %choise% == 3 (goto add)
if %choise% == 4 (goto info)
if %choise% == 5 (goto remove)
if %choise% == 6 (goto settings)
if %choise% == 7 (goto close)
if %choise% == 0000 (goto debug)

rem READY
:kassa
call clean.bat
set /p id=Введите ID товара: 
set /p countTObuy=Введите количество товара: 
set /p choise=Делаем скидку - 1 Без скидки - 0: 
if %choise% == 1 (set /p discount=Введите скидку: ) else (set discount=0)
call kassa.bat %id% %count% %discount%
timeout /t 5 /nobreak >NUL
goto main

rem IN PROGRESS
:return
call clean.bat
set /p id=Введите ID товара: 
set /p sellID=Введите ID покупки: 
call return.bat %id% %sellID%
goto main

rem READY
:add
call clean.bat
set /p id=Введите ID товара: 
set /p price=Введите стоимость товара: 
set /p name=Введите наименование товара: 
set /p count=Введите количество товара на складе: 
call add.bat %id% %price% "%name%" %count%
goto main

rem READY
:info
call clean.bat
set /p id=Введите ID товара: 
cls
if exist %1.bat (call info.bat %id%) else (echo Товар не найден!&&pause)
pause
goto main

rem READY
:remove
call clean.bat
set /p id=Введите ID товара: 
set /p info=Причина удаления: 
call remove.bat %id% %info%
goto main

rem READY
:settings
call clean.bat
set /p orgname=Введите имя организации: 
set /p choise=Обнулить ID покупки - 1, оставить как есть - 0:
if %choise% == 1 (echo echo off>>sellID.bat&&echo set sellID=0>>sellID.bat)
echo echo off>settings.bat
echo set versionSoft=v0.1
echo title Shop %versionSoft%>>settings.bat
echo set orgname=%orgname%>>settings.bat
echo set debug=0>>settings.bat
echo set testVal=1>>settings.bat
echo Настройки соханены...
timeout /t 3 /nobreak >NUL
goto main

rem READY
:debug
if %debug% == 0 (set debug=1&&goto main)
if %debug% == 1 (set debug=0&&goto main)
cls
echo EOF Error!
echo Pls, send this code to developer: 000000x0
pause