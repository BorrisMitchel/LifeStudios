/*
	File: initServer.sqf
	
	Description:
	Starts the initialization of the server.
*/



if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";
master_group attachTo[mm_bank,[0,0,0]];

onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";

[4,true,true,24] execFSM "core\fsm\timeModule.fsm";