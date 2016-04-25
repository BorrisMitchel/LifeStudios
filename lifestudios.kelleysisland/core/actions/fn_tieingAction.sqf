/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/

private["_unit"];
_unit = cursorTarget;
if((life_action_inUse) || (player getVariable "tied") || (player getVariable "restrained")) exitWith { 
["You can't do that!",30,"red"] call A3L_Fnc_Msg;
}; 
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "tied")) exitWith {};

if(!([false,"zipties",1] call life_fnc_handleInv)) exitWith {
["You need to buy zipties to do that!",20,"red"] call A3L_Fnc_Msg;
};

if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

life_action_inUse = true;
["Restraining!",30,"green"] call A3L_Fnc_Msg;

[[player,"tieup"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
_randycunt = 7;
_num = 1;
_myposy = getPos player;
while {_randycunt > _num} do {
_randycunt = _randycunt - 1;
player switchMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep 1;
};
if( _unit distance _myposy > 5 ) then { 
		titleText["Target to far away!.","PLAIN"];
} else {
	_unit setVariable["tied",true,true];
[player] remoteExec ["life_fnc_tieing", _unit];
	life_rope = 1;
};
life_action_inUse = false;
