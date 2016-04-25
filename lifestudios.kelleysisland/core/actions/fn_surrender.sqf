/*
	File: fn_surrender.sqf
	Author: Arma 3 Life [www.arma3-life.com/]/ Von Bismarck
	
	Description:
	Adds the Surrender option with able to rob players
*/

player setVariable ["surrender", true, true]; 

while { player getVariable ["surrender", false] }  do { 
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in
	
	// Check if player is alive. IMPORTANT
	if (!alive player) then {
		player setVariable ["surrender", false, true];
	};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //Animation out
