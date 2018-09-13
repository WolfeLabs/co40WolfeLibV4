/*
Author: WolfLabs
File: AdminAceWheel.sqf
Description: Function to add Admins access to many tools in the Ace3 interactions Wheel includeing but not limited to Extend the time til restart.


*/
_target = player;
_condition = {
    _target == wolfeAdmins};
_statement = {
    [true] call Wolfe_serverTimeFunction;
};
									//Icon
_action = ["Admin Menu","Admin Tools","",_statement,_condition] call ace_interact_menu_fnc_createAction;
[(typeOf _target), 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
