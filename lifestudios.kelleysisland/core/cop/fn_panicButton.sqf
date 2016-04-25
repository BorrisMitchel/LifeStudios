#include <macro.h>
/*
	File: fn_panicButton.sqf
	Author: Nathaniel Brinkman
	
	Description:
	Activates Panic Button
*/
private["_officer"];
_officer = _x getVariable ["realname", name _x];
if(isNull _officer) exitWith {}; 

if (side _officer == west) then {
[1,format["911 DISPATCH: %1 has triggered his panic button!",_officer]] remoteExec ["life_fnc_broadcast",west];
	hint ["Panic Button has been Pressed"];
} else {
	exitWith {};
}
