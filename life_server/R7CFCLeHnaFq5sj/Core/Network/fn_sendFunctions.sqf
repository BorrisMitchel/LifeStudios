"A3L_Fnc_Request" addPublicVariableEventHandler {
	private ["_player"];
	_player = owner (_this select 1);
	
	[{{[] spawn _x} foreach A3L_fnc_FrDAyEG9QsftPmS;},"BIS_fnc_spawn",_player,false] call BIS_fnc_MP;
	
	[_this select 1] execVM "\life_server\R7CFCLeHnaFq5sj\Core\Network\fn_CheckWL.sqf";
}; 
