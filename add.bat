echo off
if exist %1.bat (set error=1&&goto error) else (set error=0)
:error
if %error% == 0 (goto start)
call %1.bat
if %removed% == 1 (goto start)
echo ����� � �⨬ ID 㦥 �������!
echo.
call info.bat %1
echo.
echo ������ ��������...
pause
goto end
:start
if %removed% == 1 (echo ��������! ����� ⮢�� �� 㤠��� �� ��稭�: %name%&&echo ������� ���� ⮢�� ����� ��ண�...&&echo.)
echo echo off>%1.bat
echo set price=%2>>%1.bat
echo set name="%3">>%1.bat
echo set count=%4>>%1.bat
echo ����� %3 �ᯥ譮 ��������!
:end
cls