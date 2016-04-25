/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
_vault = actionKeys "GetOver" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
[player,false] remoteExecCall ["life_fnc_jumpFnc",nil]; //Global execution 
			_handled = true;
		};
	};

	case _vault:
	{
		if(!life_is_arrested) then {
			player action ["GetOver", player];
			} else {
			false;
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers; [] spawn life_fnc_copMarkers;}};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	// Pickaxe (shift + Q)
	case 16:
	{
		if(_shift) then {_handled = true;};
		if(_shift && (!life_action_inUse) && (vehicle player == player)) then
                {
                     if(life_inv_pickaxe > 0) then
                     {
                     [] spawn life_fnc_pickAxeUse;
        	     };
                }
	};
	
	// Spiketrip (shift + 1)
	case 2:
	{
		if(_shift) then {_handled = true;};
		if(_shift && (!life_action_inUse) && (vehicle player == player)) then
                {
                     if(life_inv_spikeStrip > 0) then
                     {
                     [] spawn life_fnc_spikeStrip;
        	     };
                }
	};
	
	case 46:
	{
		if(_shift) then {_handled = true;};
		if(_shift && !(vehicle player == player)) then {
			if (ischarging) then {
					ischarging = false;
				} else {
					[] spawn fnc_chargephone;
			};
		};
	};

	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		} else {
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [west]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		} else {
				if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [west]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && (cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[cursorTarget] call life_fnc_unrestrain;
		};};
		};
	};
	
	// O, police gate opener
        case 24:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west) && (vehicle player != player)) then {
			[] call life_fnc_copOpener;
		};
	};
	
	//Knock out, this is experimental and yeah... added Surrending to the mix :D
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed && !(player getVariable["surrender",false])) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
			_handled = true;
		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(playerSide == west && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
            {
                [] spawn
                {
                    life_siren_active = true;
                    sleep 4.7;
                    life_siren_active = false;
                };
                _veh = vehicle player;
                if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
                if((_veh getVariable "siren")) then
                {
                    titleText ["Sirens Off","PLAIN"];
                    _veh setVariable["siren",false,true];
                }
                    else
                {
                    titleText ["Sirens On","PLAIN"];
                    _veh setVariable["siren",true,true];
[_veh] remoteExec ["life_fnc_copSiren",nil];
                };
            };   
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(!_alt && _ctrlKey && !dialog) then
		{
			createdialog "playermenu";
		};
		
		//Alt y to open key menu look at key dialog name
		//if(_alt && !_ctrlKey && !dialog) then
		//{
		//	createdialog "Life_key_management";
		//};
		
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] spawn fnc_opencellp;
		};
	};
	
	//cntrl 8 Sync Data CHECK IF THIS IS GONNA BE SPAMMED
	//case 9:
	//{
	//	if(!_alt && _ctrlKey && !dialog) then
	//	{
	//		[] call SOCK_fnc_syncData;
	//		_handled = true;
	//	};
	//};
	
	//Shit+F Key to surrender - added Von 
	case 59:
      {
		if(_shift) then {_handled = true;};

		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};
	
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {[localize "STR_House_Door_NotNear",5,"blue"] call A3L_Fnc_Msg;};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						[localize "STR_House_Door_Lock",3.5,"blue"] call A3L_Fnc_Msg;
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						[localize "STR_House_Door_Unlock",3.5,"blue"] call A3L_Fnc_Msg;
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
[_veh,0] remoteExec ["life_fnc_lockVehicle",_veh];
						};
						systemChat localize "STR_MISC_VehUnlock";
						[localize "STR_MISC_VehUnlock",3,"blue"] call A3L_Fnc_Msg;
						[[player,"CarUnlocked"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
[_veh,2] remoteExec ["life_fnc_lockVehicle",_veh];
						};	
						systemChat localize "STR_MISC_VehLock";
						[localize "STR_MISC_VehLock",3,"blue"] call A3L_Fnc_Msg;
						[[player,"CarLocked"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
					};
				};
			};
		};
	};
};

_handled;
