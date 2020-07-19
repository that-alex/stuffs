@echo off
title 31
color f0
cd\
cls

:menu
cls
mode 21,16
echo.
echo        ÛÛÛ   Û
echo           Û  Û
echo           Û  Û
echo        ÛÛÛ   Û
echo           Û  Û
echo           Û  Û
echo        ÛÛÛ   Û

echo.

echo   ษออออออออออออออออป
echo   บ Type 1 to Play บ
echo   บ Type 2 to Exit บ
echo   บ Type 3 to Help บ
echo   ศออออออออออออออออผ


set /p $=


if %$%== 1 (
cls
goto :deal
)

if %$%== 2 (
exit
)

if %$%== 3 (
goto :help
)
goto :menu

:deal
set #dis_mem=0
set dis_mem=N
set /a @=%random% %%13
set var=a
set re=@0
goto :ra

:@0
set /a @=%random %%13
set var=b
set re=@1
goto :ra

:@1
set /a @=%random% %%13
set var=c
set re=@2
goto :ra

:@2
set /a @=%random% %%13
set var=ea
set re=@3
goto :ra

:@3
set /a @=%random% %%13
set var=eb
set re=@4
goto :ra

:@4
set /a @=%random% %%13
set var=ec
set re=@5
goto :ra

:@5
set /a @=%random% %%13
set var=dis
set re=game
goto :ra

:game
mode 33,29
cls
set /a t=%#a% + %#b% + %#c%
set /a et=%#ea% + %#eb% + %#ec%
if %et% GEQ 31 (
if %t% GEQ 31 (
goto :tie
))

if %et% GEQ 31 (
goto :lose
)

if %t% GEQ 31 (
goto :win
)

echo     Opponent
echo ษอออป ษอออป ษอออป
echo บ   บ บ   บ บ   บ
echo บ   บ บ   บ บ   บ
echo บ   บ บ   บ บ   บ
echo ศอออผ ศอออผ ศอออผ
echo. 

echo   Draw  Discard 
echo   ษอออป   ษอออป
echo   บ   บ   บ   บ
echo   บ   บ   บ %dis% บ
echo   บ   บ   บ   บ
echo   ศอออผ   ศอออผ

Echo.
echo ษอออป ษอออป ษอออป
echo บ   บ บ   บ บ   บ
echo บ %a% บ บ %b% บ บ %c% บ
echo บ   บ บ   บ บ   บ
echo ศอออผ ศอออผ ศอออผ
echo        You       Total-%t%
echo.
echo ษอออออออออออออออออออออออออออออป
echo บ Type 1 to Draw              บ
echo บ Type 2 to Draw from discard บ
echo บ Type 3 to Knock             บ
echo บ Type 4 to Give up           บ
echo ศอออออออออออออออออออออออออออออผ

set /p move=

if %move%== 4 (
goto :lose
)

if %move%== 3 (
goto :p-k
)

if %move%== 2 (
cls
set d=%dis%
set #d=%#dis%
set #dis=%#dis_mem%
set dis=%dis_mem%
goto :@6
)

if %move%== 1 (
cls
set /a @=%random% %%13
set var=d
set re=@6
goto :ra
:@6
echo     Opponent
echo ษอออป ษอออป ษอออป
echo บ   บ บ   บ บ   บ
echo บ   บ บ   บ บ   บ
echo บ   บ บ   บ บ   บ
echo ศอออผ ศอออผ ศอออผ
echo. 

echo   Draw  Discard 
echo   ษอออป   ษอออป
echo   บ   บ   บ   บ
echo   บ   บ   บ %dis% บ
echo   บ   บ   บ   บ
echo   ศอออผ   ศอออผ

Echo.
echo ษอออป ษอออป ษอออป ษอออป
echo บ   บ บ   บ บ   บ บ   บ
echo บ %a% บ บ %b% บ บ %c% บ บ %d% บ
echo บ   บ บ   บ บ   บ บ   บ
echo ศอออผ ศอออผ ศอออผ ศอออผ
echo           You          
echo.
echo ษออออออออออออออออออป
echo บ Type 1 Discard A บ
echo บ Type 2 Discard B บ
echo บ Type 3 Discard C บ
echo บ Type 4 Discard D บ
echo ศออออออออออออออออออผ
set /p dis_c=
goto :dis_m 
)
goto :game

::card values
:ra

if %@%== 0 (
set %var%=A
set #%var%=11
)

if %@%== 1 (
set %var%=2
set #%var%=2
)

if %@%== 2 (
set %var%=3
set #%var%=3
)

if %@%== 3 (
set %var%=4
set #%var%=4
)

if %@%== 4 (
set %var%=5
set #%var%=5
)

if %@%== 5 (
set %var%=6
set #%var%=6
)

if %@%== 6 (
set %var%=7
set #%var%=7
)

if %@%== 7 (
set %var%=8
set #%var%=8
)

if %@%== 8 (
set %var%=9
set #%var%=9
)

if %@%== 9 (
set %var%=X
set #%var%=10
)

if %@%== 10 (
set %var%=J
set #%var%=10
)

if %@%== 11 (
set %var%=Q
set #%var%=10
)

if %@%== 12 (
set %var%=K
set #%var%=10
)

goto :%re%

:win
mode 34,3
cls
Echo You won!!!
pause
goto :menu

:lose
mode 34,3
cls
Echo You Lost :(
pause
goto :menu

:tie
mode 34,3
cls
Echo You tied???
pause
goto :menu

:help
cls
mode 58,13
Echo Welcome to 31
Echo.
Echo 31 is a card game where you want to get cards equal to 31.
Echo This coumputer version had to make a few tweaks,
Echo Sadly I couldn't find a way to have suits,
Echo and we have x instead of 10
echo.
echo Have fun user!
echo               -Alex
pause
goto :menu

::discard logic
:dis_m
if %dis_c%== 1 (
set dis_mem=%dis%
set #dis_mem=%#dis%
set #dis=%#a%
set dis=%a%
set a=%d%
set #a=%#d%
)

if %dis_c%== 2 (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%b%
set #dis=%#b%
set b=%d%
set #b=%#d%
)

if %dis_c%== 3 (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%c%
set #dis=%#c%
set c=%d%
set #c=%#d%
)

if %dis_c%== 4 (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%d%
set #dis=%#d%
)

goto :enmy

::Enemy logic
:enmy
if %et% GEQ 31 (
if %t% GEQ 31 (
goto :tie
))

if %et% GEQ 31 (
goto :lose
)

if %t% GEQ 31 (
goto :win
)


if %et% GEQ 27 (
goto :e-k
)

if %#dis% GTR %#ea% (
if %#dis% GEQ 7 (
set x=%ea%
set #x=%#ea%
set ea=%dis%
set #ea=%#dis%
set dis=%x%
set #dis=%#x%
goto :end
))

if %#dis% GTR %#eb% (
if %#dis% GEQ 7 (
set x=%eb%
set #x=%#eb%
set eb=%dis%
set #eb=%dis%
set dis=%x%
set #dis=%#x%
goto :end
))

if %#dis% GTR %#ec% (
if %#dis% GEQ 7 (
set x=%c%
set #x=%#c%
set ec=%dis%
set #ec=%#dis%
set dis=%x%
set #dis=%#x%
goto :end
))

set /a @=%random% %%13
set var=ed
set re=@7
goto :ra
:@7

if %#ea% LEQ %#eb% (
if %#ea% LEQ %#ec% (
if %#ea% LSS %#ed% (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ea%
set #dis=%#ea%
set ea=%ed%
set #ea=%#ed%
goto :end
)
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ed%
set #dis=%#ed%
goto :end
))

if %#eb% LEQ %#ea% (
if %#eb% LEQ %#ec% (
if %#eb% LSS %#ed% (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%eb%
set #dis=%#eb%
set eb=%ed%
set #eb=%#ed%
goto :end
)
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ed%
set #dis=%#ed%
goto :end
))

if %#ec% LSS %#ed% (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ec%
set #dis=%#ec%
set ec=%ed%
set #ec=%#ed%
goto :end
)
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ed%
set #dis=%#ed%

:end
goto :game


::knocking logic
:p-k
goto :enmy-k
:e-k
echo Yout opponent knocked
pause
goto :play-k

:play-k
cls
cls
set /a t=%#a% + %#b% + %#c%
set /a et=%#ea% + %#eb% + %#ec%
if %et% GEQ 31 (
if %t% GEQ 31 (
goto :tie
))

if %et% GEQ 31 (
goto :lose
)

if %t% GEQ 31 (
goto :win
)

echo     Opponent
echo ษอออป ษอออป ษอออป
echo บ   บ บ   บ บ   บ
echo บ   บ บ   บ บ   บ
echo บ   บ บ   บ บ   บ
echo ศอออผ ศอออผ ศอออผ
echo. 

echo   Draw  Discard 
echo   ษอออป   ษอออป
echo   บ   บ   บ   บ
echo   บ   บ   บ %dis% บ
echo   บ   บ   บ   บ
echo   ศอออผ   ศอออผ

Echo.
echo ษอออป ษอออป ษอออป
echo บ   บ บ   บ บ   บ
echo บ %a% บ บ %b% บ บ %c% บ
echo บ   บ บ   บ บ   บ
echo ศอออผ ศอออผ ศอออผ
echo        You       Total-%t%
echo.
echo ษอออออออออออออออออออออออออออออป
echo บ Type 1 to Draw              บ
echo บ Type 2 to Draw from discard บ
echo บ Type 3 to Give up           บ
echo ศอออออออออออออออออออออออออออออผ

set /p move=

if %move%== 3 (
goto :lose
)

if %move%== 2 (
cls
set d=%dis%
set #d=%#dis%
set #dis=%#dis_mem%
set dis=%dis_mem%
goto :@9
)

if %move%== 1 (
cls
set /a @=%random% %%13
set var=d
set re=@9
goto :ra
:@9
echo     Opponent
echo ษอออป ษอออป ษอออป
echo บ   บ บ   บ บ   บ
echo บ   บ บ   บ บ   บ
echo บ   บ บ   บ บ   บ
echo ศอออผ ศอออผ ศอออผ
echo. 

echo   Draw  Discard 
echo   ษอออป   ษอออป
echo   บ   บ   บ   บ
echo   บ   บ   บ %dis% บ
echo   บ   บ   บ   บ
echo   ศอออผ   ศอออผ

Echo.
echo ษอออป ษอออป ษอออป ษอออป
echo บ   บ บ   บ บ   บ บ   บ
echo บ %a% บ บ %b% บ บ %c% บ บ %d% บ
echo บ   บ บ   บ บ   บ บ   บ
echo ศอออผ ศอออผ ศอออผ ศอออผ
echo           You          
echo.
echo ษออออออออออออออออออป
echo บ Type 1 Discard A บ
echo บ Type 2 Discard B บ
echo บ Type 3 Discard C บ
echo บ Type 4 Discard D บ
echo ศออออออออออออออออออผ
set /p dis_c=
goto :dis_mk 
)
goto :@9

:dis_mk
if %dis_c%== 1 (
set dis_mem=%dis%
set #dis_mem=%#dis%
set #dis=%#a%
set dis=%a%
set a=%d%
set #a=%#d%
)

if %dis_c%== 2 (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%b%
set #dis=%#b%
set b=%d%
set #b=%#d%
)

if %dis_c%== 3 (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%c%
set #dis=%#c%
set c=%d%
set #c=%#d%
)

if %dis_c%== 4 (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%d%
set #dis=%#d%
)

goto :k


:enmy-k
cls
if %#dis% GTR %#ea% (
if %#dis% GEQ 7 (
set x=%ea%
set #x=%#ea%
set ea=%dis%
set #ea=%#dis%
set dis=%x%
set #dis=%#x%
goto :end
))

if %#dis% GTR %#eb% (
if %#dis% GEQ 7 (
set x=%eb%
set #x=%#eb%
set eb=%dis%
set #eb=%dis%
set dis=%x%
set #dis=%#x%
goto :end
))

if %#dis% GTR %#ec% (
if %#dis% GEQ 7 (
set x=%c%
set #x=%#c%
set ec=%dis%
set #ec=%#dis%
set dis=%x%
set #dis=%#x%
goto :end
))

set /a @=%random% %%13
set var=ed
set re=@8
goto :ra
:@8

if %#ea% LEQ %#eb% (
if %#ea% LEQ %#ec% (
if %#ea% LSS %#ed% (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ea%
set #dis=%#ea%
set ea=%ed%
set #ea=%#ed%
goto :end
)
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ed%
set #dis=%#ed%
goto :end
))

if %#eb% LEQ %#ea% (
if %#eb% LEQ %#ec% (
if %#eb% LSS %#ed% (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%eb%
set #dis=%#eb%
set eb=%ed%
set #eb=%#ed%
goto :end
)
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ed%
set #dis=%#ed%
goto :end
))

if %#ec% LSS %#ed% (
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ec%
set #dis=%#ec%
set ec=%ed%
set #ec=%#ed%
goto :end
)
set dis_mem=%dis%
set #dis_mem=%#dis%
set dis=%ed%
set #dis=%#ed%

:end
goto :k

:k
if %et% GEQ 31 (
if %t% GEQ 31 (
goto :tie
))

if %et% GEQ 31 (
goto :lose
)

if %t% GEQ 31 (
goto :win
)

if %t% GTR %et% (
goto :win
)
goto :lose