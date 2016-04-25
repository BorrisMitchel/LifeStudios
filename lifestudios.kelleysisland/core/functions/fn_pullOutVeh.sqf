/*
	File: fn_pullOutVeh.sqf
	Author: Bryan "Tonic" Boardwine
*/
if(playerSide == independent OR (vehicle player == player)) exitWith {};
if(player getVariable "restrained") then
{
	detach player;
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
};

player action ["Eject", vehicle player];
["You have been pulled out of the vehicle",30,"red"] call A3L_Fnc_Msg;