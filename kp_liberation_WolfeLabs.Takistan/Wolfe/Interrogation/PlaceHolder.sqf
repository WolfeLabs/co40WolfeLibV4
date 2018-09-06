/*
Script PlaceHolder
Author: ZwinkaDink

this script handles the interragation of the prissoner and reward the points
 according to process used to get the information

 thinking the interragation point need to get to 1k to get the full 30 points of intel points
*/
_interragator = objNull;
_victim = cursorTarget;
_ipoints = 0;
_iadder = 0;
_intelpoints = 0;
_ipt = 0
_locpoints = nearestObjects [player, ["house"], 200];;
_Ipoints = floor (random [600,800,1000]); // floor makes the returned num a whole num, non decimal.
hint format ["Value of Information is : %1",_Ipoints];


player getAllHitPointsDamage params ["_one", "_two", "_three"];
	_this select 3 params ["_H1", "_H2", "_H3","_H4","_H5", "_H6", "_H7", "_H8", "_H9", "_H10", "_H11"];
	_totaladd = _H1 + _H2 + _H3 + _H4 + _H5 + _H6 + _H7 + _H8 + _H9 + _H10 + _H11;
	_damage = _totaladd / 11;



switch (t_action) do {
	case "punch_face": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "head", _damage, _interragator, "punch", -1] call ace_medical_fnc_handleDamage;
	 		_intelpoints = _Ipoints * _locpoints; 
		 
		 }else{
			_victim setHitPointDamage ["hitHead", _damage];
		 };
	 };
	
	case "pull_nails": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "arm_r", _damage, _interragator, "ropeburn", -1] call ace_medical_fnc_handleDamage;	
		
		
		}else{
			_victim setHitPointDamage ["hitHands", _damage];
		};
	};

	case "punch_gut": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "body", _damage, _interragator, "punch", -1] call ace_medical_fnc_handleDamage;
		
		
		}else{
			_victim setHitPointDamage ["hitBody", _damage];
		};
	};
	
	case "stab_leg": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "leg_r", _damage, _interragator, "stab", -1] call ace_medical_fnc_handleDamage;
		
		
		}else{
			_victim setHitPointDamage ["hitLegs", _damage];
		};
	};
	case "stab_hand": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "arm_l", _damage, __interragator, "stab", -1] call ace_medical_fnc_handleDamage;
		
		
		}else{
			_victim setHitPointDamage ["hitHands", _damage];
		};
	};
	
	default { 
		player setHitPointDamage ["hitBody", 0.75];
	};
};

		
