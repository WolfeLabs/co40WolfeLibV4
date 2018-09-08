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
_locpoints = nearestObjects [player, ["house"], 25];;
_Ipoints = floor (random [600,800,1000]); // floor makes the returned num a whole num, non decimal.
hint format ["Value of Information is : %1",_Ipoints];


_newDamage = (floor (random [1,5,10])) * 0.01;


_cDamage = getAllHitPointsDamage player select 2;
    _sum=0;
	{
		_sum = _sum + _x;
	} foreach _cDamage;
	_cdamageAvg= _sum / (count _cDamage);

switch (t_action) do {
	case "punch_face": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			_vCurrentDamage =_victim gethitpointdamage "HitHead";
			_dealDamage =_vCurrentDamage + _newDamage
			[_victim, "head", _dealDamage, _interragator, "punch", -1] call ace_medical_fnc_handleDamage;
	 		_intelpoints = _Ipoints * _locpoints; 
		 
		 }else{
			_vCurrentDamage =_victim gethitpointdamage "HitHead";
			_dealDamage =_vCurrentDamage + _newDamage
			_victim setHitPointDamage ["hitHead", _dealDamage];
			_intelpoints = _Ipoints * _locpoints; 
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

		
[["hitface","hitneck","hithead","hitpelvis","hitabdomen","hitdiaphragm","hitchest","hitbody","hitarms","hithands","hitlegs","incapacitated","hitleftarm","hitrightarm","hitleftleg","hitrightleg"],
["face_hub","neck","head","pelvis","spine1","spine2","spine3","body","arms","hands","legs","body","hand_l","hand_r","leg_l","leg_r"],
[0,0,0,0,0,0,0,0.0340469,0,0.0594532,0,0,0,0,0,0]]