/*
Author: WolfLabs
File: Wolfe_serverTimeFunction.sqf
Description: Admin function to increase the time til restart of mission thorugh the Ace Interaction Menu !!

adminTimeSet = Global Var used to set time.

*/
params["_aTime"]
adminTimeSet = (_aTime + 1) * 60;

 diag_log format ["[KP LIBERATION] [RESTART_DELAY] 1% minutes added to server restart Delay!",_aTime];
["lib_restart_admin"] remoteExecCall ["BIS_fnc_showNotification"];

