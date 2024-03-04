echo off
set MOD_NAME=mp_zmmod
set GAME_FOLDER=D:\SteamLibrary\steamapps\common\Call of Duty Black Ops II
set OAT_BASE=C:\OAT
set MOD_BASE=%cd%

"%OAT_BASE%\linker.exe" ^
--load "%GAME_FOLDER%\zone\all\zm_prison.ff" ^
--load "%GAME_FOLDER%\zone\all\zm_transit.ff" ^
--load "%GAME_FOLDER%\zone\all\zm_tomb.ff" ^
--load "%GAME_FOLDER%\zone\all\zm_nuked.ff" ^
--load "%GAME_FOLDER%\zone\all\zm_highrise.ff" ^
--base-folder "%OAT_BASE%" ^
--asset-search-path "%MOD_BASE%" ^
--source-search-path "%MOD_BASE%\zone_source" ^
--output-folder "%MOD_BASE%\zone" mod

set err=%ERRORLEVEL%

if %err% EQU 0 (
XCOPY "%MOD_BASE%\zone\mod.ff" "%LOCALAPPDATA%\storage\t6\mods\%MOD_NAME%\mod.ff" /Y
) ELSE (
COLOR C
echo FAIL!
)
pause