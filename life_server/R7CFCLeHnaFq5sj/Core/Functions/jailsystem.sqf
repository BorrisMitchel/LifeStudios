fnc_arrestmenu = {
	createdialog "a3l_jail_menu";
	private["_unit","_id"];
	_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
	personyouwanjail = _unit;
	if(isNull _unit) exitWith {};
	if(isNil "_unit") exitwith {}; 
	if(!(_unit isKindOf "Man")) exitWith {}; 
	if(!isPlayer _unit) exitWith {};
	if((_unit getVariable "life_is_arrested")) exitWith {["This person is already arrested!",20,"red"] call A3L_Fnc_Msg;};
	if(!(_unit getVariable "restrained")) exitWith {["This person is not restrained!",20,"red"] call A3L_Fnc_Msg;}; 
	if(!((side _unit) in [civilian,independent])) exitWith {}; 
	if(isNull _unit) exitWith {}; 

	_display = findDisplay 5546;
	_nameofperson = _display displayCtrl 2200;
	_nametext = format ["%1",(_unit getvariable "realname")];
	_nameofperson ctrlSetText _nametext;
};

fnc_arrestbutton = {
	_display = findDisplay 5546;
	_nameofperson = _display displayCtrl 2200;
	_timeinminute = _display displayCtrl 2201;
	_reasonofjail = _display displayCtrl 2202;
	_playername = ctrlText _nameofperson;
	_jailtime = ctrlText _timeinminute;
	_jailtimecom = parseNumber _jailtime;
	if (_jailtimecom > 240) exitwith {
	["You cannot arrest anyone longer than 4 hours!",20,"red"] call A3L_Fnc_Msg;
	};
	_reason = ctrlText _reasonofjail;
	if(isNull personyouwanjail) exitWith {};

	detach personyouwanjail;
	[[personyouwanjail,false,_jailtime,_reason],"fnc_sendtojail",personyouwanjail,false] spawn life_fnc_MP;
	[[personyouwanjail,player,false],"life_fnc_wantedBounty",false,false] spawn life_fnc_MP;
};

fnc_sendtojail = {
	private["_bad","_unit"];
	_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
	hint format["%1", _unit];
	if(isNull _unit) exitWith {};
	if(_unit != player) exitWith {};
	if(life_is_arrested) exitWith {};
	_bad = [_this,1,false,[false]] call BIS_fnc_param;
	life_arrestMinutes = _this select 2;
	life_arrestReason = _this select 3;

	A3L_Fnc_OldUniform = Uniform player;
	player addUniform "A3L_Prisoner_Outfit";

	hint localize "STR_Jail_LicenseNOTF";
	[1] call life_fnc_removeLicenses;


	if(_bad) then
	{
		waitUntil {alive player};
		sleep 1;
	};
	if(life_inv_heroinu > 0) then {[false,"heroinu",life_inv_heroinu] call life_fnc_handleInv;};
	if(life_inv_heroinp > 0) then {[false,"heroinp",life_inv_heroinp] call life_fnc_handleInv;};
	if(life_inv_coke > 0) then {[false,"cocaine",life_inv_coke] call life_fnc_handleInv;};
	if(life_inv_cokep > 0) then {[false,"cocainep",life_inv_cokep] call life_fnc_handleInv;};
	if(life_inv_turtle > 0) then {[false,"turtle",life_inv_turtle] call life_fnc_handleInv;};
	if(life_inv_cannabis > 0) then {[false,"cannabis",life_inv_cannabis] call life_fnc_handleInv;};
	if(life_inv_marijuana > 0) then {[false,"marijuana",life_inv_marijuana] call life_fnc_handleInv;};
	[[player,_bad,life_arrestMinutes,life_arrestReason],"svr_sendtojail",false,false] spawn life_fnc_MP;
	[5] call SOCK_fnc_updatePartial;
};

fnc_jailsetup = {
	_totaljail = parseNumber life_arrestMinutes;
	_hours = floor (_totaljail/60);
	_minutes = _totaljail % 60;
	player setvariable ["jailcuff",false,true];
	player setvariable ["jailtime",[_hours,_minutes,0,_totaljail,life_arrestReason],true];
	player setVariable["restrained",false,true];
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
	life_is_arrested = true;
	player setVariable["life_is_arrested",true,true];
	removeAllWeapons player;
	{player removeMagazine _x} foreach (magazines player);

	_jaillocations = [
	[9631.38,10079.4,0.00143909],
	[9632.74,10082.7,0.00143909],
	[9634.19,10085.7,0.00143909],
	[9635.92,10089.3,0.00143909],
	[9637.38,10092.5,0.00143909],
	[9638.73,10095.5,0.00143909],
	[9640.38,10098.7,0.00143909],
	[9641.92,10102.1,0.00143909],
	[9614.22,10087.1,0.00143909],
	[9616.13,10089.7,0.00143909],
	[9617.63,10093.1,0.00144005],
	[9619.44,10096.3,0.00143909],
	[9620.98,10099.4,0.00144005],
	[9622.66,10102.4,0.00143909],
	[9624.31,10105.4,0.00143909],
	[9625.79,10108.9,0.00143909]
	];
	_randomer = floor random (count _jaillocations);
	_jailpos = _jaillocations select _randomer;

	player setPos _jailpos;
	if((player distance (getMarkerPos "jail_marker")) > 40) then
	{
		player setPos (getMarkerPos "jail_marker");
	};

	("A3LJAILTIME" call BIS_fnc_rscLayer) cutRsc ["a3l_jail_timer","PLAIN"];
	[] spawn
	{
		while {(player distance (getMarkerPos "jail_marker")) < 60} do
		{
			sleep 120;
			if ((player distance (getMarkerPos "jail_marker")) < 60) then {
			("A3LJAILTIME" call BIS_fnc_rscLayer) cutText ["","PLAIN"]; 
			("A3LJAILTIME" call BIS_fnc_rscLayer) cutRsc ["a3l_jail_timer","PLAIN"];
			_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#B0B0B0' align='center' size='1.8'>%1</t>",life_arrestReason];
			((uiNamespace getVariable "a3ljailtimer") displayCtrl 1101) ctrlSetStructuredText _sexytext;
			};
		};
	};
		
	_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#B0B0B0' align='center' size='1.8'>%1</t>",life_arrestReason];
	((uiNamespace getVariable "a3ljailtimer") displayCtrl 1101) ctrlSetStructuredText _sexytext;
	
	[0] spawn fnc_jailtimer;
};

fnc_jailtimer = {
	sleep 1;
	_jailtime = player getvariable "jailtime";
	_release = 0;
	_hour = _jailtime select 0;
	_minute = _jailtime select 1;
	_second = _jailtime select 2;
	_totaljail = _jailtime select 3;
	life_arrestReason = _jailtime select 4;
	_dtbsave = _this select 0;
	if (_second > 0) then {
		_second = _second - 1;
	} else { if (_minute > 0) then {
		_minute = _minute - 1;
		_totaljail = _totaljail - 1;
		_second = 60;
	} else { if (_hour > 0) then {
		_hour = _hour - 1;
		_totaljail = _totaljail - 1;
		_minute = 59;
		_second = 60;
	} else {};};};
	seconds = _second;
	minute = _minute;
	hour = _hour;
	life_hunger = 100;
	life_thirst = 100;
	
	_hrtext = "";
	_hourtext = "";
	_mntext = "";
	_minutetext = "";
	_sectext = "";
	_secondtext = "seconds";

	if (_hour == 0) then {_hrtext = "";} else {
	if (_hour == 1) then {_hourtext = "hour"} else {_hourtext = "hours"};
		_hrtext = parseText format["%1 %2, ",_hour,_hourtext];
	};
	if ((_hour == 0) && (_minute == 0)) then { _mntext = ""; } else {
	if (_minute == 1) then {_minutetext = "minute"} else {_minutetext = "minutes"};
		_mntext = parseText format["%1 %2 and ",_minute,_minutetext];
	};
	
	_cuffed = player getvariable "jailcuff";
	if (_cuffed) then {
	player setfatigue 1;
	_sexytext2 = parseText format["<t font='EtelkaNarrowMediumPro' color='#8b0000' align='left' size='1.8'>Your legs are cuffed!</t>"];
	((uiNamespace getVariable "a3ljailtimer") displayCtrl 1521) ctrlSetStructuredText _sexytext2;
	} else {
	if (getfatigue player > 0.95) then {
	player setfatigue 0;
	_sexytext2 = parseText format["<t font='EtelkaNarrowMediumPro' color='#8b0000' align='left' size='1.8'></t>"];
	((uiNamespace getVariable "a3ljailtimer") displayCtrl 1521) ctrlSetStructuredText _sexytext2;
	};
	};
	
	_dtbsave = _dtbsave + 1;
	if (_dtbsave == 300) then {  [[_hour,_minute,player],"svr_jailtodb",false,false] spawn life_fnc_MP; _dtbsave = 0; };
	_sectext = parseText format["%1 %2",_second,_secondtext];

	_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#FF9500' align='center' size='2.5'>%1%2%3</t>",_hrtext,_mntext,_sectext];
	((uiNamespace getVariable "a3ljailtimer") displayCtrl 1100) ctrlSetStructuredText _sexytext;
	_sexytext2 = parseText format["<t font='EtelkaNarrowMediumPro' color='#B0B0B0' align='center' size='1.8'>%1</t>",life_arrestReason];
	((uiNamespace getVariable "a3ljailtimer") displayCtrl 1101) ctrlSetStructuredText _sexytext2;

	player setvariable ["jailtime",[_hour,_minute,_second,_totaljail,life_arrestReason],true];
	if (((_hour < 1) && (_minute < 1)&& (_second < 1)) OR (((player distance (getMarkerPos "jail_marker")) > 60))) then {
		if ((_hour < 1) && (_minute < 1)&& (_second < 1)) then {
			_release = 1;
			[_release] call fnc_releaseprison;
		} else {
			if (((player distance (getMarkerPos "jail_marker")) > 60) && ((player distance (getMarkerPos "jail_marker")) < 150)) then {
			_release = 2;
			[_release] call fnc_releaseprison;
		} else {
		[_dtbsave] spawn fnc_jailtimer;
		player setpos [9631.38,10079.4,0.00143909];
		};};
	} else { [_dtbsave] spawn fnc_jailtimer;  };
};

fnc_releaseprison = {
	_release = _this select 0;
	life_is_arrested = false;
	player setvariable ["jailtime",[0,0,0,0,""],true];
	player setVariable["life_is_arrested",false,true];
	player setfatigue 0;
	player setvariable ["jailcuff",false,true];
	[[player],"svr_releaseprison",false,false] spawn life_fnc_MP;
	if (_release == 1) then {
		
		if (isNil "A3L_Fnc_OldUniform") then 
		{
			player addUniform "A3LShirt";
		} else
		{
			player addUniform A3L_Fnc_OldUniform;
		};
		
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		player setPos (getMarkerPos "jail_release");
		("A3LJAILTIME" call BIS_fnc_rscLayer) cutText ["","PLAIN"]; //remove
		["Your jailtime is over, you are a free man now!",20,"green"] call A3L_Fnc_Msg;
	} else {
		[[getPlayerUID player,profileName,"901"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		["You escaped the jail!",20,"orange"] call A3L_Fnc_Msg;
		("A3LJAILTIME" call BIS_fnc_rscLayer) cutText ["","PLAIN"]; //remove
	};
};

fnc_copjailmenu = {
	createdialog "a3l_arrest_panel";
	prisoner = _this select 0;
	_totaljailtime = prisoner getvariable "jailtime";
	_jailcuff = prisoner getvariable "jailcuff";
	_name = name prisoner;
	
	_jailhours = _totaljailtime select 0;
	_jailmins = _totaljailtime select 1;
	_jailsecs = _totaljailtime select 2;
	_jailreason = _totaljailtime select 4;
	
	if (_jailcuff) then {
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1601) ctrlSetText "Uncuff legs";
	} else {
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1601) ctrlSetText "Cuff legs";
	};
	
	if (currentweapon prisoner == "a3l_pickaxe") then {
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1602) ctrlSetText "Remove Pickaxe";
	} else {
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1602) ctrlSetText "Give Pickaxe";
	};
	
	if (prisoner getvariable "restrained") then {
	if((_curTarget getVariable["Escorting",false])) then {
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 5251) ctrlSetText "Stop Escort";
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 5251) buttonSetAction "[prisoner] call life_fnc_stopEscorting; [prisoner] call life_fnc_copInteractionMenu;";
	} else {
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 5251) ctrlSetText "Escort";
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 5251) buttonSetAction "[prisoner] call life_fnc_escortAction; closeDialog 0;";
	};
	} else {
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 5251) ctrlSetText "Escort";
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 5251) buttonSetAction "[""Prisoner is not restrained!"",20,""red""] call A3L_Fnc_Msg; closeDialog 0;";
	};
	
	_hrtext = "";
	_mntext = "";
	_hourtext = "";
	_minutetext = "";
	_secondtext = "seconds";
	
	if (_jailhours == 0) then {_hrtext = "";} else {
	if (_jailhours == 1) then {_hourtext = "hour"} else {_hourtext = "hours"};
		_hrtext = parseText format["%1 %2, ",_jailhours,_hourtext];
	};
	if ((_jailhours == 0) && (_jailmins == 0)) then { _mntext = ""; } else {
	if (_jailmins == 1) then {_minutetext = "minute"} else {_minutetext = "minutes"};
		_mntext = parseText format["%1 %2 and ",_jailmins,_minutetext];
	};
	_sectext = parseText format["%1 %2",_jailsecs,_secondtext];

	_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFF' align='left' size='1'>%1</t>",_name];
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1000) ctrlSetStructuredText _sexytext;
	
	_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFF' align='left' size='1'>%1</t>",_jailreason];
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1001) ctrlSetStructuredText _sexytext;

	_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFF' align='left' size='1'>%1%2%3</t>",_hrtext,_mntext,_sectext];
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1002) ctrlSetStructuredText _sexytext;

	_jailh = format ["%1",_jailhours];
	_jailm = format ["%1",_jailmins];
	_jails = format ["%1",_jailsecs];
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1400) ctrlSetText _jailreason;
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1401) ctrlSetText _jailh;
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1402) ctrlSetText _jailm;
	((uiNamespace getVariable "a3l_arrest_panel") displayCtrl 1403) ctrlSetText _jails;

};


fnc_addpickaxe = {
if ((currentweapon prisoner == "") OR(currentweapon prisoner == "a3l_pickaxe")) then {
	if (currentweapon prisoner == "") then {
	prisoner addweapon "A3L_Pickaxe";
	prisoner addmagazine "pickaxe_swing";
	[[true],"fnc_cltaddpick",prisoner,false] spawn life_fnc_MP;
	["You gave the prisoner a pickaxe",20,"orange"] call A3L_Fnc_Msg;
	} else {
	prisoner removeweapon "A3L_Pickaxe";
	[[false],"fnc_cltaddpick",prisoner,false] spawn life_fnc_MP;
	["You took the pickaxe of the prisoner",20,"orange"] call A3L_Fnc_Msg;
	};
	closedialog 0;
	[prisoner] call fnc_copjailmenu;
} else {
["The prisoner got something else in his hands.",20,"orange"] call A3L_Fnc_Msg;
};};

fnc_cltaddpick = {
_selection = _this select 0;
hint format ["test"];
if (_selection) then {
	player addweapon "A3L_Pickaxe";
	player addmagazine "pickaxe_swing";
	["You received a pickaxe from the officer",20,"green"] call A3L_Fnc_Msg;
	} else {
	player removeweapon "A3L_Pickaxe";
	["An officer took your pickaxe",20,"red"] call A3L_Fnc_Msg;
};};

fnc_cufflegs = {
_jailcuff = prisoner getvariable "jailcuff";
if (_jailcuff) then {
prisoner setvariable ["jailcuff",false,true];
["prisoners legs are unrestrained and he can run now.",20,"green"] call A3L_Fnc_Msg;
} else {
prisoner setvariable ["jailcuff",true,true];
["prisoners legs are restrained and cannot run anymore.",20,"green"] call A3L_Fnc_Msg;
};
closedialog 0;
[prisoner] call fnc_copjailmenu;
};



fnc_updatejailtime = {
	_display = findDisplay 5547;
	_reasondis = _display displayCtrl 1400;
	_hoursdis = _display displayCtrl 1401;
	_minsdis = _display displayCtrl 1402;
	_secdis = _display displayCtrl 1403;
	_reason = ctrlText _reasondis;
	_hours = parseNumber (ctrlText _hoursdis);
	_minutes = parseNumber (ctrlText _minsdis);
	_seconds = parseNumber (ctrlText _secdis);
	if (_seconds > 60) then {
	_seconds = 60;
	};
	if (_minutes > 60) then {
	_minutes = 60;
	};
	if (_hours > 4) then {
	_hours = 4;
	_seconds = 0;
	_minutes = 0;
	};
	
	_sectotal = _hours * 60;
	_sectotal = _sectotal + _minutes;
	_madearray = [_hours,_minutes,_seconds,_sectotal,_reason];
	prisoner setvariable ["jailtime",_madearray,true];
	closedialog 0;
	["Jail time has been updated!",20,"green"] call A3L_Fnc_Msg;
};

fnc_addinjailfur = 
{
		_furnace_arr = [
			["A3L_Normal_Rock_S","Rock",20],
			["A3L_Bits_Rock_S_Iron","Iron Ore",30],
			["A3L_Bits_Rock_S_Coal","Coal",40],
			["A3L_Bits_Rock_S_Diamond","Raw Diamond",50]
		];
		_attobj = attachedobjects player;
		_amount = count _attobj;
		if (_amount == 0) exitwith {
			["You don't have anything to put in!",20,"red"] call A3L_Fnc_Msg;
		};
		
		_item = _attobj select 0;
		_typeof = typeof _item;
		_inarray = FALSE;
		_timebonus = 0;
		{ _classname = _x select 0; _timebonsel = _x select 2; if (_typeof == _classname) then { _inarray = TRUE; _timebonus = _timebonsel;}; } foreach _furnace_arr;
		if (!_inarray) exitwith {
		["You cannot put this item in the furnace!",20,"red"] call A3L_Fnc_Msg;
		};
		detach _item;
		deletevehicle _item;
	
		_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#57E300' align='center' size='0.9'>-%1</t>",_timebonus];
		((uiNamespace getVariable "a3ljailtimer") displayCtrl 1002) ctrlSetStructuredText _sexytext;
		_totaljailtime = player getvariable "jailtime";
		_jailhours = _totaljailtime select 0;
		_jailmins = _totaljailtime select 1;
		_jailsecs = _totaljailtime select 2;
		_totaljail = _totaljailtime select 3;
		_jailreason = _totaljailtime select 4;
		
		if (_jailsecs > _timebonus) then {
			_jailsecs = _jailsecs - _timebonus;
		} else { if (_jailmins > 0) then {
			_jailmins = _jailmins - 1;
			_totaljail = _totaljail - 1;
			_jailsecs = 60 - _timebonus;
		} else { if (_jailhours > 0) then {
			_jailhours = _jailhours - 1;
			_totaljail = _totaljail - 1;
			_jailmins = 59;
			_jailsecs = 60 - _timebonus;
		} else {};};};
		player setvariable ["jailtime",[_jailhours,_jailmins,_jailsecs,_totaljail,_jailreason],true];
		sleep 2;
		_sexytext2 = parseText format["<t font='EtelkaNarrowMediumPro' color='#57E300' align='center' size='1'></t>"];
		((uiNamespace getVariable "a3ljailtimer") displayCtrl 1002) ctrlSetStructuredText _sexytext2;
};


