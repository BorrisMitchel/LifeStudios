/*
	File: fn_insertExpInfo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Read the file name... Explains it.
*/
exp_farming = 0;
exp_mining = 0;

[getPlayerUID player,profileName,player] remoteExec ["DB_fnc_insertExpRequest",2];
