/*
 police sender, open gates from inside the car (only for cops) 
 by Insane
 www.tdc-clan.eu
*/

{
	if (_x animationPhase "Gate" == 3.6) then {
		_x animate ["Gate", 0];
		["Gate closed",30,"red"] call A3L_Fnc_Msg;
	} 
	else 
	{
		_x animate ["Gate", 3.6];
		["Gate opened",30,"blue"] call A3L_Fnc_Msg;
	};
	
} forEach (nearestObjects [player, ["A3L_Fence_Open"], 10]);

{
	if (_x animationPhase "Door_1_rot" == 1) then {
		_x animate ["Door_1_rot", 0];
		["Bar gate closed",30,"red"] call A3L_Fnc_Msg;
	} 
	else 
	{
		_x animate ["Door_1_rot", 1];
		["Bar gate opened",30,"blue"] call A3L_Fnc_Msg;
	};
	
} forEach (nearestObjects [player, ["Land_BarGate_F"], 30]);