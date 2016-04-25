/*
	File: fn_queryExpRequest.sqf
	Author: Zan
	
	Return:
	ARRAY - If array has 0 elements it should be handled as an error in client-side files.
	STRING - The request had invalid handles or an unknown error and is logged to the RPT.
*/
private["_uid","_side","_query","_return","_queryResult","_qResult","_handler","_thread","_tickTime","_loops","_returnCount"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,sideUnknown,[civilian]] call BIS_fnc_param;
_ownerID = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _ownerID) exitWith {};
_ownerID = owner _ownerID;

/*
	_returnCount is the count of entries we are expecting back from the async call.
	The other part is well the SQL statement.
*/
_query = switch(_side) do {
	case west: {_returnCount = 3; format["SELECT playerid, name, miningexp, farmingexp FROM skills WHERE playerid='%1'",_uid];};
	case civilian: {_returnCount = 3; format["SELECT playerid, name, miningexp, farmingexp FROM skills WHERE playerid='%1'",_uid];};
	case independent: {_returnCount = 3; format["SELECT playerid, name, miningexp, farmingexp FROM skills WHERE playerid='%1'",_uid];};
};

waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "-------- Client Experience Query Request --------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];

if(typeName _queryResult == "STRING") exitWith {
	[[],"SOCK_fnc_insertExpInfo",_ownerID,false,true] spawn life_fnc_MP;
};

if(count _queryResult == 0) exitWith {
	[[],"SOCK_fnc_insertExpInfo",_ownerID,false,true] spawn life_fnc_MP;
};

//Blah conversion thing from a2net->extdb
private["_tmp"];
// Skills
_tmp = _queryResult select 2;
_queryResult set[2,[_tmp] call DB_fnc_numberSafe];
_tmp = _queryResult select 3;
_queryResult set[3,[_tmp] call DB_fnc_numberSafe];


diag_log format["Send to player Result: %1",_queryResult];
diag_log "------------------------------------------------";

[_queryResult,"SOCK_fnc_requestExpReceived",_ownerID,false] spawn life_fnc_MP;