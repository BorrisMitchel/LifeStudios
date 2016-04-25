#include <macro.h>
/*
	File: fn_requestPhReceived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called by the server saying that we have a response so let's 
	sort through the information, validate it and if all valid 
	set the client up.
*/
//Error handling and  junk..
if(isNil "_this") exitWith {diag_log format["LINE 15"];};
if(typeName _this == "STRING") exitWith {diag_log format["LINE 16"];};
if(count _this == 0) exitWith {diag_log format["LINE 17"];};
if((_this select 0) == "Error") exitWith {diag_log format["LINE 18"];};
if((getPlayerUID player) != _this select 0) exitWith {diag_log format["LINE 19"];};


__CONST__(cellnumber,parseNumber(_this select 2));
batterylevel = parseNumber (_this select 4);
mobilesettings = (_this select 3);
contacts_list = (_this select 5);
player setvariable ["cellnumber",parseNumber(_this select 2),true];