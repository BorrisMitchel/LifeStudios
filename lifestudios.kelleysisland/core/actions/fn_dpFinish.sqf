/*
	File: fn_dpFinish.sqf
	Author: Caiden
	
	Description:
	Finishes the DP Mission
*/
private ["_deliverypoint","_package","_award"];

// Let's see what delivery point we are at
_deliverypoint = _this select 3;

// Let's get a list of nearest objects to see if there is a package that can be delivered here
_package = nearestObjects [player,["A3L_Package"],5];

if ((count _package) == 0) exitwith {["No packages nearby",50,"blue"] call A3L_Fnc_Msg;};

// Select the nearest package to the AI
_package = _package select 0;

// Check the destination of the package
_packagepoint = _package getVariable "destination";

if (isNil "_packagepoint") exitwith {};

if (_deliverypoint == _packagepoint) then {
	_award = (floor (random 175)) + 320;
	life_cash = life_cash + (_award + 25);
	[format ["You succesfully delivered the package and earned %1",_award],50,"blue"] call A3L_Fnc_Msg;
	["Your $25 deposit has been refunded",50,"blue"] call A3L_Fnc_Msg;
	if (_package IN A3L_packages) then
	{
		A3L_Packages = A3L_Packages - [_package];
	};
	detach _package;
	deletevehicle _package;
} else 
{
["This package cannot be delivered here",50,"blue"] call A3L_Fnc_Msg;
};


