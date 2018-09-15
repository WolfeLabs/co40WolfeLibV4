/*

Desc: Explains the frequencies to the player.
Author: WolfLabs

*/

"What's This?" hintC [
	"Channel 1: Squad 1 - Default Channel",
	"Channel 2: Squad 2",
	"Channel 3: Squad 3",
	"Channel 4: AIR - Airteam ONLY",
	"Channel 5: TEAM - Defaults to Additional",
	"Channel 6: LOGI - Logistics Team Only"
];
hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
	0 = _this spawn {
		_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
		hintSilent "";
	};
}];