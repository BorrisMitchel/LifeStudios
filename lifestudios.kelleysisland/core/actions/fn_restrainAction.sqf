/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

_unit setVariable["restrained",true,true];
[player] remoteExec ["life_fnc_restrain", _unit];
[0,format[localize "STR_NOTF_Restrained",_unit getVariable["realname", name _unit], profileName]] remoteExec ["life_fnc_broadcast",west];
