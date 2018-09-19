private [ "_target", "_nmer", "_uid", "_playerType", "_exCa", "_exist", "_roles", "_deca", "_bigShaq", "_idmatch"];

waitUntil { alive player };
sleep 1;

_target = player;
_nmer = profileName;
_uid =  getPlayerUID _target;
_playerType = typeOf _target;

if ( !isNull _target ) then {
	if (!([] call F_isAdmin)) then { //Shit he's not an admin, here we go..

			_exCa = ["2:wolfelabs:playerSeenBefore:[",_uid,"]"] joinString "";
		_exist = "extDB3" callExtension _exCa;
			if (!isNull _exist) then{ //Dude's in the list
				_roles = _exCa = ["2:wolfelabs:getPlayerRoles:[",_uid,"]"] joinString "";
					if (_roles select 0 == "1") then {//Holy hell it made it in one..

					} else {
						if (_roles select 0 == "2") then {//Ah, a big boi.
							_roles = _roles select 1; //Aw, who's a cute UID? (You are)
							
							_exCa = ["5:",_roles] joinString "";
						_bigShaq = "extDB3" callExtension _exCa;
							while ((_bigShaq select 0 ) == "3") then {//#WaitOne
								sleep 1;
								_bigShaq = "extDB3" callExtension _exCa;
							};
							//Finally.
							while (!(_bigShaq == "")) do {
								_deca pushBack _bigShaq;
							};
					} else { //Son of a bitch it's broke. Hit the logs.
						hint "Ayy you nutt, you broke something.";
					};

			};
			} else {//Ayy you shit, you ain't existing.
					_
					_exCa = ["1:wolfelabs:createPlayer:[",_nmer,",",_uid,"]"] joinString "";
				"extDB3" callExtension _exCa;
			};
		
		_deca params [_admin,_med,_eng,_snip,_pil,_logi,_com];

			if ( _admin ) then { //Full Access, no typeOf checks.
				_idmatch = true;
			};
		
		
		if ( _playerType == "B_medic_F" ) then {
			if ( _med ) then {
				_idmatch = true;
			};
		};

		if ( _playerType == "B_engineer_F" ) then {
			if ( _eng ) then {
				_idmatch = true;
			};
		};
		
		if ( _playerType == "B_recon_F" ) then {
			if ( _snip ) then {
				_idmatch = true;
			};
		};
		
		if ( _playerType == "B_Helipilot_F" ) then {
			if ( _pil ) then {
				_idmatch = true;
			};
		};

		if ( _playerType == "somethingLogistical" ) then { 
			if ( _logi ) then {
				_idmatch = true;
			};
		};
		
		if ( _playerType == "B_Officer_F" ) then { 
			if ( _com ) then { 
					_idmatch = true;
			};
		};

		if( _playerType == "B_Soldier_F" ) then { //Rifleman, No Checks Needed.
				_idmatch = true;
		};
		
	if ( !(_idmatch ) ) then { //All Checks Failed, Lobby Kick.

			sleep 1;
			if ( alive _target ) then {
				endMission "End2";
			};
		};
	};
};
