/*
	File: fn_getDPMission.sqf
	Author: Caiden
	
	Description:
	Gives the player a delivery mission
*/

// TODO private all variables in this script
private ["_package"];

// If the array does not exist then create a new one
if (isNil "A3L_Packages") then
{
	A3L_Packages = [];
};

// If you already have a package then delete it
if ((count A3L_Packages) > 0) then {
	{detach _x; deletevehicle _x;} foreach A3L_Packages;
	
	// Empty the array
	A3L_Packages = [];
};

// Check if player has 200 dollar
if (life_cash < 25) exitwith {["$25 deposit is required to insure the package",50,"blue"] call A3L_Fnc_Msg;};

// Take the money
life_cash = life_cash - 25;
["$25 deposit has been taken from you to insure the package",50,"blue"] call A3L_Fnc_Msg;

// Generate a random number between 0 and 4
_random = round (random 4);

// Create a new package at player position
_package = "A3L_Package" createvehicle (getpos player);

// Add package to the array I created earlier
A3L_Packages = A3L_Packages + [_package];

// Broadcast the variable across the network
_package setVariable ["destination",(format ["dp_%1",(_random + 1)]),true];

// Inform the player where the package has to go
[format ["This package has to be delivered to DP %1",(_random+1)],50,"blue"] call A3L_Fnc_Msg;