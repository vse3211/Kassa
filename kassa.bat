echo off
title KASSA %versionSoft%
call %1.cmd
call sellID.bat
set /a sellID=%sellID%+1
echo set sellID=%sellID%>>sellID.bat
set /a total=%price%*%countTObuy%
if %count% == 0 (echo ����� ��� � ����稨! �������� ������.&&goto end)
set /a count=%count%-%countTObuy%
set /a total=%total%-%3
echo set count=%count%>>%1.cmd
cls
echo ===================>print.txt
echo %orgname%>>print.txt
echo ===================>>print.txt
echo ������������:>>print.txt
echo %name%>>print.txt
echo.>>print.txt
echo �⮨�����:>>print.txt
echo %total%>>print.txt
echo.>>print.txt
echo ��� �ਮ��⥭��:>>print.txt
echo %date%>>print.txt
echo %time%>>print.txt
echo.>>print.txt
echo ����� ���㯪�:>>print.txt
echo %sellID%
echo.>>print.txt
echo ������� �� �������!>>print.txt
echo ����� 祪�...
print print.txt
echo ��� �ᯥ�⠭
echo ���࠭���� ���ଠ樨 � ���㯪�...
echo ==============================>>%date%.txt
echo %date% %time%>>%date%.txt
echo ID: %1>>%date%.txt
echo �த��� ��: %total% ⥭��>>%date%.txt
echo � ������⢥: %count% ��>>%date%.txt
echo �� ᪨����: %3 ⥭��>>%date%.txt
echo ==============================>>%date%.txt
cls
echo ���⥦ �஢����
echo ===============
:end
if %count% == 0 (echo ���⥦ �⬥��� ��-�� ������⢨� ⮢��.)