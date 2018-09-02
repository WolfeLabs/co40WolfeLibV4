

_interragator = objNull;
_damage = (cursorTarget getHitPointDamage HITPOINT) + NEW_DAMAGE;
_victim = cursorTarget;
_ipoints = 0;
_iadder = 0;
_intelpoints = 0;



switch (t_action) do {
	case "punch_face": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "head", _damage, _interragator, "punch", -1] call ace_medical_fnc_handleDamage;
	 	
		 
		 }else{

		 };
	 };
	
	case "pull_nails": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "arm_r", _damage, _interragator, "ropeburn", -1] call ace_medical_fnc_handleDamage;	
		
		
		}else{
			
		};
	};

	case "punch_gut": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "body", _damage, _interragator, "punch", -1] call ace_medical_fnc_handleDamage;
		
		
		}else{

		};
	};
	
	case "stab_leg": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "leg_r", _damage, _interragator, "stab", -1] call ace_medical_fnc_handleDamage;
		
		
		}else{

		};
	};
	case "stab_hand": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[_victim, "arm_l", _damage, __interragator, "stab", -1] call ace_medical_fnc_handleDamage;
		
		
		}else{

		};
	};
	
	default { 
		player setHitPointDamage ["hitBody", 0.75];
	};
};

		
Ipoints = floor (random [600,800,1000]); // floor makes the returned num a whole num, non decimal. hint format ["Value of C is : %1",C];
