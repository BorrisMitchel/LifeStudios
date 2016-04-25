#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/

// TFR Variables API
//tf_no_auto_long_range_radio = false; 


private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

switch (__GETC__(life_mediclevel)) do {
	case 1: { life_paycheck = (6000); }; //Probie
	case 2: { life_paycheck = (6250); }; //EMT
	case 3: { life_paycheck = (6750); }; //Adv. EMT
	case 4: { life_paycheck = (7000); }; //S&R Trooper
	case 5: { life_paycheck = (7250); }; //EAQ
	case 6: { life_paycheck = (7500); }; //Paramedic
	case 7: { life_paycheck = (7750); }; //LT
	case 8: { life_paycheck = (8000); }; //Captain
	case 9: { life_paycheck = (8250); }; //Commissioner
	default { life_paycheck = (6000); }; //Default
};

[] call life_fnc_spawnMenu;
[] execVM "core\welcomemedic.sqf";
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
