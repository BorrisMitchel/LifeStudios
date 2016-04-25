#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/

// TFR Variables API
//tf_no_auto_long_range_radio = false; 


private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((__GETC__(life_coplevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

switch (__GETC__(life_coplevel)) do {
	case 1: { life_paycheck = (4000); }; //DOC
	case 2: { life_paycheck = (3650); }; //Cadet
	case 3: { life_paycheck = (3850); }; //Officer
	case 4: { life_paycheck = (4000); }; //Corporal
	case 5: { life_paycheck = (4250); }; //Sergeant/Cmd
	case 6: { life_paycheck = (4500); }; //DTU
	case 7: { life_paycheck = (4500); }; //SWAT
	case 8: { life_paycheck = (4500); }; //SWAT Cmd
	case 9: { life_paycheck = (4500); }; //DOJ/SIU
	default { life_paycheck = (3650); }; //Default
};

player setVariable["rank",(__GETC__(life_coplevel)),true];

[] call life_fnc_spawnMenu;
[] execVM "core\welcomecop.sqf";
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.