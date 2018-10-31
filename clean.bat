set debugchoise=0
:debug
if %debug% == 0 (goto clean)
cls
echo Warning! Debug mode activated or enabled!
echo Enter 0000 on main to disable debug mode.
echo.
echo total = %total%
echo count = %count%
echo countTObuy = %countTObuy%
echo price = %price%
echo choise = %choise%
echo id = %id%
echo discount = %discount%
echo sellID = %sellID%
echo name = %name%
echo count = %count%
echo info = %info%
echo.
echo testVal = %testVal%
echo debug = %debug%
pause

:clean
set total=
set count=
set countTObuy=
set price=
set choise=
set id=
set discount=
set sellID=
set name=
set count=
set info=
if %debug% == 1 (set /p debugchoise=Повторить процедуру - 1: )
if %debugchoise% == 1 (goto debug)
cls
