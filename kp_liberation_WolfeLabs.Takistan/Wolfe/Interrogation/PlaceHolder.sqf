

interragator = objNull
_damage = (TARGET getHitPointDamage HITPOINT) + NEW_DAMAGE;


switch (t_action) do {
	case "punch_face": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[TARGET, "head", _damage, interragator, "punch", -1] call ace_medical_fnc_handleDamage;
	 	}else{

		 };
	 };
	
	case "pull_nails": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[TARGET, "arm_r", _damage, interragator, "ropeburn", -1] call ace_medical_fnc_handleDamage;	
		}else{
			
		};
	};

	case "punch_gut": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[TARGET, "body", _damage, interragator, "punch", -1] call ace_medical_fnc_handleDamage;
		}else{

		};
	};
	
	case "stab_leg": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[TARGET, "leg_r", _damage, interragator, "stab", -1] call ace_medical_fnc_handleDamage;
		}else{

		};
	};
	case "stab_hand": {
		if (isClass (configfile >> "CfgPatches" >> "ace_medical")) then {
			[TARGET, "arm_l", _damage, interragator, "stab", -1] call ace_medical_fnc_handleDamage;
		}else{

		};
	};
	
	default { 

	};
};

		
Ipoints = floor (random [600,800,1000]); // floor makes the returned num a whole num, non decimal. hint format ["Value of C is : %1",C];