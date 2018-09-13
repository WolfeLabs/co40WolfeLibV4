/*
Author: WolfLabs
File: AdminAceWheel.sqf
Description: Function to add Admins access to many tools in the Ace3 interactions Wheel includeing but not limited to Extend the time til restart.


*/

/*
 * Argument:
 * 0: Action name <STRING>
 * 1: Name of the action shown in the menu <STRING>
 * 2: Icon <STRING>
 * 3: Statement <CODE>
 * 4: Condition <CODE>
 * 5: Insert children code <CODE> (Optional)
 * 6: Action parameters <ANY> (Optional)
 * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
 * 8: Distance <NUMBER> (Optional)
 * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
 * 10: Modifier function <CODE> (Optional)
 */


_target = player;
_condition = {
    _target == wolfeAdmins};
_statement = {
    [30] call Wolfe_serverTimeFunction;
};
									
_action = ["Admin Menu","Admin Time Increase","Wolfe\Tags\wolverines\icon.paa",_statement,_condition] call ace_interact_menu_fnc_createAction;

/*
 * Argument:
 * 0: Object the action should be assigned to <OBJECT>
 * 1: Type of action, 0 for actions, 1 for self-actions <NUMBER>
 * 2: Parent path of the new action <ARRAY> (Example: `["ACE_SelfActions", "ACE_Equipment"]`)
 * 3: Action <ARRAY>
 */


[(typeOf _target), 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
