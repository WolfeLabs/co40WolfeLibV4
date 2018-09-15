/*

Desc: Sets radio freqs on the player.
Author: WolfLabs

*/

params [];

_pluginEnabled = call TFAR_fnc_isTeamSpeakPluginEnabled; // Running that plugin, right?

if (_pluginEnabled) then {

	_hasSW = call TFAR_fnc_haveSWRadio; // You got a SW?
	_hasLR = call TFAR_fnc_haveLRRadio; // You got a LW?
	_hasDD = call TFAR_fnc_haveDDRadio; // You got a DD?

	if (_hasSW) then {
		// SW radio - channel 1 - SQUAD 1
		[(call TFAR_fnc_activeSwRadio), 1, "44.1"] call TFAR_fnc_SetChannelFrequency;
		// SW radio - channel 2 - SQUAD 2
		[(call TFAR_fnc_activeSwRadio), 2, "44.2"] call TFAR_fnc_SetChannelFrequency;
		// SW radio - channel 3 - SQUAD 3
		[(call TFAR_fnc_activeSwRadio), 3, "44.3"] call TFAR_fnc_SetChannelFrequency;
		// SW radio - channel 4 - AIR
		[(call TFAR_fnc_activeSwRadio), 4, "45.0"] call TFAR_fnc_SetChannelFrequency;
		// SW radio - channel 5 - TEAM
		[(call TFAR_fnc_activeSwRadio), 5, "44.0"] call TFAR_fnc_SetChannelFrequency;
		// SW radio - channel 6 - LOGI
		[(call TFAR_fnc_activeSwRadio), 6, "44.4"] call TFAR_fnc_SetChannelFrequency;


		//Set SW additional to TEAM 
		[(call TFAR_fnc_activeSwRadio), 5] call TFAR_fnc_setAdditionalSwChannel;
		//set SW additional to R ear
		[(call TFAR_fnc_ActiveSWRadio), 2] call TFAR_fnc_setAdditionalSwStereo;

		//Set SW channel to SQUAD 1
		[(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_setSwChannel;
		//Set SW channel to L ear
		[(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setSwStereo;
	};

	if (_hasLR) then {
		// LR radio - channel 1 - SQUAD 1
		[(call TFAR_fnc_activeLrRadio), 1, "44.1"] call TFAR_fnc_SetChannelFrequency;
		// LR radio - channel 2 - SQUAD 2
		[(call TFAR_fnc_activeLrRadio), 2, "44.2"] call TFAR_fnc_SetChannelFrequency;
		// LR radio - channel 3 - SQUAD 3
		[(call TFAR_fnc_activeLrRadio), 3, "44.3"] call TFAR_fnc_SetChannelFrequency;
		// LR radio - channel 4 - AIR
		[(call TFAR_fnc_activeLrRadio), 4, "45.0"] call TFAR_fnc_SetChannelFrequency;
		// LR radio - channel 5 - TEAM
		[(call TFAR_fnc_activeLrRadio), 5, "44.0"] call TFAR_fnc_SetChannelFrequency;
		// LR radio - channel 6 - LOGI
		[(call TFAR_fnc_activeLrRadio), 6, "44.4"] call TFAR_fnc_SetChannelFrequency;


		//Set LR channel to TEAM
		[(call TFAR_fnc_activeLrRadio), 5] call TFAR_fnc_setSwChannel;
		//Set LR channel to R ear
		[(call TFAR_fnc_activeLrRadio), 2] call TFAR_fnc_setSwStereo;
	};

} else {
	"Error: Grabbing Radio Freq." hintC "Enable TFAR on Teamspeak!";
};