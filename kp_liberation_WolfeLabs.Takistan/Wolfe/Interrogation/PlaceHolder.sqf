/*
Script PlaceHolder
Author: ZwinkaDink

this script handles the interragation of the prissoner and reward the points
 according to process used to get the information

 thinking the interragation point need to get to 1k to get the full 30 points of intel points
*/

params["t_action"]
_interragator = objNull;
_victim = cursorTarget;
_intelpoints = 0;
_locCurrent = nearestObjects [player, ["house"], 25];
_ipoints = floor (random [100,300,600]); // floor makes the returned num a whole num, non decimal.
_IpointLoc = floor (random [600,800,1000]);
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
	 		if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 0 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 0 + _ipoints;
			 }; 
		 }else{
			_vCurrentDamage =_victim gethitpointdamage "HitHead";
			_dealDamage =_vCurrentDamage + _newDamage
			_victim setHitPointDamage ["hitHead", _dealDamage];
			if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 0 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 0 + _ipoints;
			 }; 
		 };
	 };
	
	case "pull_nails": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "arm_r", _dealDamage, _interragator, "ropeburn", -1] call ace_medical_fnc_handleDamage;	
			if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 0 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 0 + _ipoints;
			 }; 
		
		}else{
			_victim setHitPointDamage ["hitHands", _dealDamage];
			if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 0 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 0 + _ipoints;
			 }; 
		};
	};

	case "punch_gut": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "body", _dealDamage, _interragator, "punch", -1] call ace_medical_fnc_handleDamage;
			if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 0 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 0 + _ipoints;
			 }; 
		
		}else{
			_victim setHitPointDamage ["hitBody", _dealDamage];
			if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 0 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 0 + _ipoints;
			 }; 
		};
	};
	
	case "stab_leg": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "leg_r", _dealDamage, _interragator, "stab", -1] call ace_medical_fnc_handleDamage;
			if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 1 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 1 + _ipoints;
			 }; 
		
		}else{
			_victim setHitPointDamage ["hitLegs", _dealDamage];
			if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 1 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 1 + _ipoints;
			 }; 
		};
	};
	case "stab_hand": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "arm_l", _dealDamage, _interragator, "stab", -1] call ace_medical_fnc_handleDamage;
			if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 1 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 1 + _ipoints;
			 }; 
		
		}else{
			_victim setHitPointDamage ["hitHands", _dealDamage];
			if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 1 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 1 + _ipoints;
			 }; 
		};
	};
	
	default { 
		player setHitPointDamage ["hitBody", 0.75];
		if _locCurrent then {
				_ipt = [_ipt] call intelpoints select 1 + _ipointLoc;
			 }else {
				_ipt = [_ipt] call intelpoints select 1 + _ipoints;
			 }; 
	};
};