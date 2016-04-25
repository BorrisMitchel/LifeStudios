#include <macro.h>
/*
	File: fn_p_updateMenu.sqf
	Author: Arma 3 Life (A3L)
	
	Description:
	Updates the player menu (Virtual Interaction Menu)
*/
sleep 0.1;
private["_dialog","_inv","_lic","_licenses","_near","_near_units","_mstatus","_shrt","_side"];
disableSerialization;

_side = switch(playerSide) do {case west:{"cop"}; case civilian:{"civ"}; case independent:{"med"};};

_dialog = findDisplay 12197;
_inv = _dialog displayCtrl 5932;
_lic = _dialog displayCtrl 5933;
_near = _dialog displayCtrl 5930;
_background = uiNamespace getvariable "background";
((uiNamespace getVariable "cellphone") displayCtrl 5521) ctrlSetText _background;
_struct = [];
lbClear _inv;
lbClear _near;

//Near players
_near_units = [];
{ if(player distance _x < 10) then {_near_units set [count _near_units,_x];};} foreach playableUnits;
{
	if(!isNull _x && alive _x && player distance _x < 10 && _x != player) then
	{
		_near lbAdd format["%1 - %2",_x getVariable["realname",name _x], side _x];
		_near lbSetData [(lbSize _near)-1,str(_x)];
	};
} foreach _near_units;

ctrlSetText[2009,format["Weight: %1 / %2", life_carryWeight, life_maxWeight]];
{
	_str = [_x] call life_fnc_varToStr;
	_shrt = [_x,1] call life_fnc_varHandle;
	_val = missionNameSpace getVariable _x;
	if(_val > 0) then
	{
		_inv lbAdd format["%1x - %2",_val,_str];
		_inv lbSetData [(lbSize _inv)-1,_shrt];
	};
} foreach life_inv_items;
{
	if((_x select 1) == _side) then
	{
		_str = [_x select 0] call life_fnc_varToStr;
		_val = missionNamespace getVariable (_x select 0);
		if(_val) then
		{
			_struct = _struct + [_str];
		};
	};
} foreach life_licenses;

_structamount = count _struct;
if(_structamount == 0) then
{
	_struct = ["No Licenses"];
};

test = _struct;
{
_lic lbAdd _x;
} foreach _struct;
lbSetCurSel [5933, 0];
lbSetCurSel [5930, 0];