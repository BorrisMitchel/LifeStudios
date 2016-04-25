/*
	File: push the vehicle brahs

*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName"];
_veh = cursorTarget;  
_vel = velocity _veh;  
_dir = direction player; 
life_interrupted = false;
if(isNull _veh) exitwith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air") OR (_veh isKindOf "A3L_Tahoe_Base")) then
{
	if (getfatigue player < .95) then
	{
		life_action_inUse = true;
		
		
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format["Pushing %1",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		
		while{true} do
		{
			if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["life_fnc_animSync",0];
				player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
				player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			};
			sleep 0.27;
			_cP = _cP + 0.06;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		player playActionNow "stop";
		if(life_interrupted) exitWith {life_interrupted = false; [localize "STR_NOTF_ActionCancel",10,"red"] call A3L_Fnc_Msg; life_action_inUse = false;};
		if(player != vehicle player) exitWith {["You must be outside of the vehicle to push it. Sorry that this prevents you from exploiting the system, well not really.",10,"red"] call A3L_Fnc_Msg;};
		_veh allowdamage false;
		_speed = 8.5;
		_veh setVelocity [   (_vel select 0) + (sin _dir * _speed),    (_vel select 1) + (cos _dir * _speed),    (_vel select 2)  ];
		["You have pushed that vehicle.",5,"green"] call A3L_Fnc_Msg;
		sleep 1;
		_veh allowdamage true;
		player setfatigue (getFatigue player) +.55;
	} else
{["You're too fatigued!",5,"red"] call A3L_Fnc_Msg; closeDialog 0;};	
	
};
