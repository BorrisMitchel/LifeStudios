/*
	File: fn_destroyradio.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Destroys Radio
*/
player unassignItem "tf_anprc148jem";
player removeItem "tf_anprc148jem";
//Remove other one thingy yea :3
player unassignItem "tf_anprc152";
player removeItem "tf_anprc152";
["Your radios were destroyed!",30,"red"] call A3L_Fnc_Msg;
