/*
	File: fn_insertPhRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Does something with inserting... Don't have time for
	descriptions... Need to write it...
*/
private["_uid","_name","_side","_money","_bank","_licenses","_handler","_thread","_queryResult","_query","_alias","_arrestreason"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_returnToSender = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error checks
if((_uid == "") OR (_name == "")) exitWith {systemChat "Bad UID or name";}; //Let the client be 'lost' in 'transaction'
if(isNull _returnToSender) exitWith {systemChat "ReturnToSender is Null!";}; //No one to send this to!

_query = format["SELECT playerid, name FROM cellphone WHERE playerid='%1'",_uid];

waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "--------- Insert Phone Query Request -----------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

//Double check to make sure the client isn't in the database...
if(typeName _queryResult == "STRING") exitWith {[[],"SOCK_fnc_dataQuery",(owner _returnToSender),false] spawn life_fnc_MP;}; //There was an entry!
if(count _queryResult != 0) exitWith {[[],"SOCK_fnc_dataQuery",(owner _returnToSender),false] spawn life_fnc_MP;};

diag_log "----------- Start stealing a number ------------";
_batterylevel = 100;
_number = 0;

_retrieved = true;

while {_retrieved} do {
	_randomnmr = floor ((random 899999)+100000);
	diag_log format["%1 requested cellphone number: %2",_name,_randomnmr];
	_query = format["SELECT number, name FROM cellphone WHERE number='%1'",_randomnmr];
	waitUntil{sleep (random 0.3); !DB_Async_Active};
	_tickTime = diag_tickTime;
	_queryResult = [_query,2] call DB_fnc_asyncCall;
	if((typeName _queryResult == "STRING") OR (count _queryResult != 0)) then {
	diag_log format["Cellphone number: %1 is owned, try again...",_randomnmr];
	} else {
	diag_log format["Cellphone number: %1 is not owned, it's mine now!",_randomnmr];
	_retrieved = false;
	_number = _randomnmr;
	};
};

//Clense and prepare some information.
_name = [_name] call DB_fnc_mresString; //Clense the name of bad chars.
_alias = [[_name]] call DB_fnc_mresArray;
_number = [_number] call DB_fnc_numberSafe;
_batterylevel = [_batterylevel] call DB_fnc_numberSafe;

//Prepare the query statement..
_query = format["INSERT INTO cellphone (name, playerid, number, settings, batterylevel, contacts) VALUES('%1', '%2', '%3','""[0,[`Default`,`Super_ringtone`],[`Default`,`Default`],`Default`]""', '100','""[]""')",
	_name,
	_uid,
	_number
];

diag_log "------- Sucessfully received a number ---------";
diag_log format["%1 succesfully received cellphone number: %2",_name,_number];
diag_log "------------------------------------------------";

waitUntil {!DB_Async_Active};
[_query,1] call DB_fnc_asyncCall;

//[[],"SOCK_fnc_dataQuery",(owner _returnToSender),false] spawn life_fnc_MP;