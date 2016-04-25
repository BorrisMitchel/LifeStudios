/*
	File: fn_tazed.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the tazed animation and broadcasts out what it needs to.
*/
private["_unit","_shooter","_curWep","_curMags","_attach"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_shooter = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; life_istazed = false;};

a3l_fnc_forceRagdoll = {
    if (vehicle player != player) exitWith {};
    private "_rag";
    _rag = "Land_Can_V3_F" createVehicleLocal [0,0,0];
    _rag setMass 1e10;
    _rag attachTo [player, [0,0,0], "Spine3"];
    _rag setVelocity [0,0,6];
    player allowDamage false;
	sleep 1;
    detach _rag;
    0 = _rag spawn {
        deleteVehicle _this;
        player allowDamage true;
    };
[player,"amovppnemstpsraswrfldnon"] remoteExec ["life_fnc_animSync",0];
	life_istazed = false;
};

if(_shooter isKindOf "Man" && alive player) then
{
	if(!life_istazed) then
	{
		life_istazed = true;
		_curWep = currentWeapon player;
		_curMags = magazines player;
		_attach = if(primaryWeapon player != "") then {primaryWeaponItems _unit} else {[]};
		{player removeMagazine _x} foreach _curMags;
		player removeWeapon _curWep;
		player addWeapon _curWep;
		if(count _attach != 0 && primaryWeapon _unit != "") then
		{
			{
				_unit addPrimaryWeaponItem _x;
			} foreach _attach;
		};
		if(count _curMags != 0) then
		{
			{player addMagazine _x;} foreach _curMags;
		};
		
[_unit] remoteExec ["life_fnc_tazeSound",0];
		_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL _unit);
		_obj setPosATL (getPosATL _unit);
		call a3l_fnc_forceRagdoll;
		[[[_shooter],{[format ["You were tazed by: %1",_unit],50,"blue"] call A3L_fnc_msg;}],"BIS_fnc_spawn",_unit,true] call life_fnc_MP;
		[[[_unit],{[format ["You tazed: %2",_shooter],50,"blue"] call A3L_fnc_msg;}],"BIS_fnc_spawn",_shooter,true] call life_fnc_MP;
		
		//_unit attachTo [_obj,[0,0,0]];
		disableUserInput true;
		sleep 15;
[player,"amovppnemstpsraswrfldnon"] remoteExec ["life_fnc_animSync",0];
		if(!(player getVariable["Escorting",false])) then {
			detach player;
		};
		life_istazed = false;
		player allowDamage true;
		disableUserInput false;
	};
}
	else
{
	_unit allowDamage true;
	life_iztazed = false;
};
