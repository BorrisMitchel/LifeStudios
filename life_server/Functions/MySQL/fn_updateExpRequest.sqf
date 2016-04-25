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
_expmining = [_this,3,0,[0]] call BIS_fnc_param;
_expfarming = [_this,4,0,[0]] call BIS_fnc_param;

//Get to those error checks.
if((_uid == "") OR (_name == "")) exitWith {};

//Parse and setup some data.
_name = [_name] call DB_fnc_mresString;
_expmining = [_expmining] call DB_fnc_numberSafe;
_expfarming = [_expfarming] call DB_fnc_numberSafe;


//Does something license related but I can't remember I only know it's important?

switch (_side) do {
	case west: {_query = format["UPDATE skills SET name='%1', miningexp='%2', farmingexp='%3' WHERE playerid='%4'",_name,_expmining,_expfarming,_uid];};
	case civilian: {_query = format["UPDATE skills SET name='%1', miningexp='%2', farmingexp='%3' WHERE playerid='%4'",_name,_expmining,_expfarming,_uid];};
	case independent: {_query = format["UPDATE skills SET name='%1', miningexp='%2', farmingexp='%3' WHERE playerid='%4'",_name,_expmining,_expfarming,_uid];};
};

waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;
