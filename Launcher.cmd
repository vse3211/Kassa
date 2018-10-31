echo off
chcp 866
call settings.bat

:main
call clean.bat
cls
if %debug% == 1 (echo WARNING! Debug mode is enabled.)
echo 1. ����
echo 2. ������ ⮢��
echo 3. �������� ⮢��
echo 4. ���ଠ�� � ⮢��
echo 5. �������� ⮢��
echo 6. ����ன�� ��������
echo 7. ������� ᬥ��
set /p choise=����� �����: 
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
set /p id=������ ID ⮢��: 
set /p countTObuy=������ ������⢮ ⮢��: 
set /p choise=������ ᪨��� - 1 ��� ᪨��� - 0: 
if %choise% == 1 (set /p discount=������ ᪨���: ) else (set discount=0)
call kassa.bat %id% %count% %discount%
timeout /t 5 /nobreak >NUL
goto main

rem IN PROGRESS
:return
call clean.bat
set /p id=������ ID ⮢��: 
set /p sellID=������ ID ���㯪�: 
call return.bat %id% %sellID%
goto main

rem READY
:add
call clean.bat
set /p id=������ ID ⮢��: 
set /p price=������ �⮨����� ⮢��: 
set /p name=������ ������������ ⮢��: 
set /p count=������ ������⢮ ⮢�� �� ᪫���: 
call add.bat %id% %price% "%name%" %count%
goto main

rem READY
:info
call clean.bat
set /p id=������ ID ⮢��: 
cls
if exist %1.bat (call info.bat %id%) else (echo ����� �� ������!&&pause)
pause
goto main

rem READY
:remove
call clean.bat
set /p id=������ ID ⮢��: 
set /p info=��稭� 㤠�����: 
call remove.bat %id% %info%
goto main

rem READY
:settings
call clean.bat
set /p orgname=������ ��� �࣠����樨: 
set /p choise=���㫨�� ID ���㯪� - 1, ��⠢��� ��� ���� - 0:
if %choise% == 1 (echo echo off>>sellID.bat&&echo set sellID=0>>sellID.bat)
echo echo off>settings.bat
echo set versionSoft=v0.1
echo title Shop %versionSoft%>>settings.bat
echo set orgname=%orgname%>>settings.bat
echo set debug=0>>settings.bat
echo set testVal=1>>settings.bat
echo ����ன�� �堭���...
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