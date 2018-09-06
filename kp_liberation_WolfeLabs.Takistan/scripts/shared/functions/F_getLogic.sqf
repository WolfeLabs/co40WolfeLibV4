private [ "_Logicobj" ];

_Logicobj = objNull;

if (!isNil "LogicGuy") then {
	{ if ( _x == LogicGuy ) exitWith { _Logicobj = _x }; } foreach allPlayers;
};

_Logicobj