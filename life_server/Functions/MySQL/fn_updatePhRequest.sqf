/*
	File: fn_updatePhRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Ain't got time to describe it, READ THE FILE NAME!
*/
private["_uid","_side","_cash","_bank","_licenses","_gear","_name","_query","_thread"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_side = [_this,2,sideUnknown,[civilian]] call BIS_fnc_param;
_battery = [_this,4,100,[0]] call BIS_fnc_param;
_settings = [_this,3,[0,["Default","Super_ringtone"],["Default","default_smstone"],"Default"],[[]]] call BIS_fnc_param;
_contacts = [_this,5,[],[[]]] call BIS_fnc_param;

//Get to those error checks.
if((_uid == "") OR (_name == "")) exitWith {};

//Parse and setup some data.
_name = [_name] call DB_fnc_mresString;
_battery = [_battery] call DB_fnc_numberSafe;
_settings = [_settings] call DB_fnc_mresArray;
_contacts = [_contacts] call DB_fnc_mresArray;


//Does something license related but I can't remember I only know it's important?

diag_log format["%1 saved his phone info with %2 batterylevel and settings %3",_name,_battery,_settings];

switch (_side) do {
	case west: {_query = format["UPDATE cellphone SET name='%1', settings='%2', batterylevel='%3', contacts='%4' WHERE playerid='%5'",_name,_settings,_battery,_contacts,_uid];};
	case civilian: {_query = format["UPDATE cellphone SET name='%1', settings='%2', batterylevel='%3', contacts='%4' WHERE playerid='%5'",_name,_settings,_battery,_contacts,_uid];};
	case independent: {_query = format["UPDATE cellphone SET name='%1', settings='%2', batterylevel='%3', contacts='%4' WHERE playerid='%5'",_name,_settings,_battery,_contacts,_uid];};
};

waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;
