/*
	File: fn_updateRequest.sqf
	Author: Tonic
*/
private["_packet","_array","_flag"];
_packet = [getPlayerUID player,(profileName),playerSide,life_cash,life_atmcash];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};
{
	if(_x select 1 == _flag) then
	{
		_array set[count _array,[_x select 0,(missionNamespace getVariable (_x select 0))]];
	};
} foreach life_licenses;
_packet set[count _packet,_array];

[] call life_fnc_saveGear;
_packet set[count _packet, life_gear];
switch (playerSide) do {
	case civilian: {
		_packet set[count _packet,life_is_arrested];
	};
};

_packet remoteExec ["DB_fnc_updateRequest",2];


_packet2 = [getPlayerUID player,(profileName),playerSide,mobilesettings,batterylevel,contacts_list];
_packet2 remoteExec ["DB_fnc_updatePhRequest",2];

_packet3 = [getPlayerUID player,(profileName),playerSide,exp_mining,exp_farming];
_packet3 remoteExec ["DB_fnc_updateExpRequest",2];
