echo off
if exist %1.bat (set error=1&&goto error) else (set error=0)
:error
if %error% == 0 (goto start)
call %1.bat
if %removed% == 1 (goto start)
echo Товар с этим ID уже существует!
echo.
call info.bat %1
echo.
echo ОТМЕНА ОПЕРАЦИИ...
pause
goto end
:start
if %removed% == 1 (echo Внимание! Данный товар был удален по причине: %name%&&echo Создаем новый товар вместо старого...&&echo.)
echo echo off>%1.bat
echo set price=%2>>%1.bat
echo set name="%3">>%1.bat
echo set count=%4>>%1.bat
echo Товар %3 успешно добавлен!
:end
cls