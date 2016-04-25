cellphoneopen2 = 0;
cellphoneopen = 0;
ischarging = false;

tabletapp_array = [
["Player Menu","Player<br/>Menu","\A3L_Client2\cellphone\icons\playerm.paa","\A3L_Client2\cellphone\icons\selected\playerm.paa",[""],"playermenu"],
["Bank","Bank","\A3L_Client2\cellphone\icons\Bank.paa","\A3L_Client2\cellphone\icons\selected\Bank.paa",[""],"bankmenu"],
["Tag Menu","Tag<br/>Menu","\A3L_Client2\cellphone\icons\tagm.paa","\A3L_Client2\cellphone\icons\selected\tagm.paa",[""],"tagmenu"],
["Phone","Phone","\A3L_Client2\cellphone\icons\phone.paa","\A3L_Client2\cellphone\icons\selected\phone.paa",[""],"callmenu"],
["Messages","Messages","\A3L_Client2\cellphone\icons\messages.paa","\A3L_Client2\cellphone\icons\selected\messages.paa",[""],"messagemenu"],
["Contacts","Contacts","\A3L_Client2\cellphone\icons\wantedm.paa","\A3L_Client2\cellphone\icons\selected\wantedm.paa",[""],"Contactsmenu"],
["Key Chain","Key<br/>Chain","\A3L_Client2\cellphone\icons\weather.paa","\A3L_Client2\cellphone\icons\selected\weather.paa",[""],"keymenu"],
["Skills","Skills","\A3L_Client2\cellphone\icons\playerm.paa","\A3L_Client2\cellphone\icons\selected\playerm.paa",[""],"skillsmenu"],
["Synchronize","Synchronize","\A3L_Client2\cellphone\icons\synchronize.paa","\A3L_Client2\cellphone\icons\selected\synchronize.paa",[""],"1"],
["Settings","Settings","\A3L_Client2\cellphone\icons\settings.paa","\A3L_Client2\cellphone\icons\selected\settings.paa",[""],"newsettingsmenu"],
["Viewdistance","View<br/>Distance","\A3L_Client2\cellphone\icons\weather.paa","\A3L_Client2\cellphone\icons\selected\weather.paa",[""],"2"]
];
apploc_array = [
["app1",1001,2001,3001],
["app2",1002,2002,3002],
["app3",1003,2003,3003],
["app4",1004,2004,3004],
["app5",1005,2005,3005],
["app6",1006,2006,3006],
["app7",1007,2007,3007],
["app8",1008,2008,3008],
["app9",1009,2009,3009],
["app10",1010,2010,3010],
["app11",1011,2011,3011],
["app12",1012,2012,3012],
["app13",1013,2013,3013],
["app14",1014,2014,3014],
["app15",1015,2015,3015],
["app16",1016,2016,3016],
["app17",1017,2017,3017],
["app18",1018,2018,3018],
["app19",1019,2019,3019],
["app20",1020,2020,3020]
];

backgroundarr = [
["Default","\A3L_client2\cellphone\backgrounds\background01.paa"],
["Triangles","\A3L_client2\cellphone\backgrounds\background02.paa"],
["Blue Scratches","\A3L_client2\cellphone\backgrounds\background03.paa"],
["Town","\A3L_client2\cellphone\backgrounds\background04.paa"],
["Grand Theft Auto","\A3L_client2\cellphone\backgrounds\background05.paa"],
["Rainbow Nyan","\A3L_client2\cellphone\backgrounds\background06.paa"],
["Blue Nyan","\A3L_client2\cellphone\backgrounds\background07.paa"],
["Star Nyan","\A3L_client2\cellphone\backgrounds\background08.paa"],
["Tomb Raider","\A3L_client2\cellphone\backgrounds\background09.paa"],
["Cats","\A3L_client2\cellphone\backgrounds\background10.paa"],
["Grande","\A3L_client2\cellphone\backgrounds\background11.paa"],
["Stars","\A3L_client2\cellphone\backgrounds\background12.paa"],
["Dark-blue clouds","\A3L_client2\cellphone\backgrounds\background13.paa"],
["Technology","\A3L_client2\cellphone\backgrounds\background14.paa"],
["Uranus","\A3L_client2\cellphone\backgrounds\background15.paa"],
["Space Sloth","\A3L_client2\cellphone\backgrounds\background16.paa"],
["Burning Forest","\A3L_client2\cellphone\backgrounds\background17.paa"],
["Pink Tree","\A3L_client2\cellphone\backgrounds\background18.paa"],
["Tiger","\A3L_client2\cellphone\backgrounds\background19.paa"],
["Counter Strike GO","\A3L_client2\cellphone\backgrounds\background20.paa"],
["Gandalf","\A3L_client2\cellphone\backgrounds\background21.paa"],
["Star Heaven","\A3L_client2\cellphone\backgrounds\background22.paa"],
["Batman","\A3L_client2\cellphone\backgrounds\background23.paa"]
];


fnc_opencellp = {
if (batterylevel == 0) exitwith {
	createdialog "emptyphone";
	_switch1 = "\A3L_Client2\cellphone\base\empty.paa";
	_switch2 = "\A3L_Client2\cellphone\base\empty2.paa";
	_switch = 0;
	while {cellphoneopen2 == 1} do {
	switch (_switch) do
	{
		case 0: {((uiNamespace getVariable "cellphone") displayCtrl 5521) ctrlSetText _switch1; _switch = 1;};
		case 1: {((uiNamespace getVariable "cellphone") displayCtrl 5521) ctrlSetText _switch2; _switch = 0;};
	};
	sleep 0.5;
	};
};
createdialog "cellphone";

ctrlShow[7767,false]; ctrlShow[7768,false]; ctrlShow[7769,false];
[] spawn fnc_whilecopen;

_selectedbg = mobilesettings select 3;
_pictureloc = "\A3L_client2\cellphone\backgrounds\background01.paa";
{
	if (_selectedbg == _x select 0) then {
	_pictureloc = _x select 1;
	};
} foreach backgroundarr;
uiNamespace setvariable ["background",_pictureloc];
((uiNamespace getVariable "cellphone") displayCtrl 5521) ctrlSetText _pictureloc;
{
_arrnumber = _forEachIndex;
_appname = _x select 0;
_apptext = _x select 1;
_apppic = _x select 2;

_apploc = apploc_array select _arrnumber;
_locnumber = _apploc select 0;
_piclocation = _apploc select 1;
_buttonlocation = _apploc select 2;
_textlocation = _apploc select 3;

_apptext2 = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='0.6' align='center'>%1</t>", _apptext];
((uiNamespace getVariable "cellphone") displayCtrl _piclocation) ctrlSetText _apppic;
((uiNamespace getVariable "cellphone") displayCtrl _textlocation) ctrlSetStructuredText _apptext2;

} foreach tabletapp_array;

};

fnc_whilecopen = {
	while {cellphoneopen == 1} do {
	_curdate = date;
	_minute = _curdate select 4;
	_hour = _curdate select 3;
	_ampm = "AM";
	_hourC = _hour;
	_batterypic = "";

	if(_minute >= 0 && _minute <= 9) then {_minute = parseText format["0%1", _minute];};

	switch (true) do
	{
		case (_hour < 12): {_ampm = "AM"; _hourC = _hour; };
		case ((_hour == 12) OR (_hour < 13)): {_ampm = "PM"; _hourC = _hour;};
		case ((_hour == 13) OR (_hour > 13)): {_ampm = "PM"; _hourC = _hour - 12;};
	};

	switch (true) do
	{
		case (batterylevel > 80): {_batterypic = "\A3L_Client2\cellphone\base\100bat.paa";  };
		case (batterylevel > 60): {_batterypic = "\A3L_Client2\cellphone\base\80bat.paa"; };
		case (batterylevel > 40): {_batterypic = "\A3L_Client2\cellphone\base\60bat.paa"; };
		case (batterylevel > 20): {_batterypic = "\A3L_Client2\cellphone\base\40bat.paa"; };
		case (batterylevel > 10): {_batterypic = "\A3L_Client2\cellphone\base\20bat.paa"; };
		case (batterylevel > 0): {_batterypic = "\A3L_Client2\cellphone\base\10bat.paa"; };
		case (batterylevel == 0): {_batterypic = "\A3L_Client2\cellphone\base\0bat.paa"; closedialog 0; [] spawn fnc_opencellp;};
	};

	if(_hourC >= 0 && _hourC <= 9) then {_hourC = parseText format["0%1", _hourC];};
	_batprnttext = format ["%1%2",batterylevel,"%"];
	_timetext = format ["%1:%2%3",_hourC,_minute,_ampm];
	((uiNamespace getVariable "cellphone") displayCtrl 5525) ctrlSetText _timetext;
	((uiNamespace getVariable "cellphone") displayCtrl 5524) ctrlSetText _batprnttext;
	((uiNamespace getVariable "cellphone") displayCtrl 5523) ctrlSetText _batterypic;
	sleep 0.1;
	};
};

fnc_callmenu = {
_call_array = uiNamespace getvariable "call_array";
_enternumber = _this select 0;
switch (_enternumber) do
{
	case 0: {player say3d "cellphone0";};
	case 1: {player say3d "cellphone1";};
	case 2: {player say3d "cellphone2";};
	case 3: {player say3d "cellphone3";};
	case 4: {player say3d "cellphone4";};
	case 5: {player say3d "cellphone5";};
	case 6: {player say3d "cellphone6";};
	case 7: {player say3d "cellphone7";};
	case 8: {player say3d "cellphone8";};
	case 9: {player say3d "cellphone9";};
};
_call_array = _call_array + [[_enternumber]];

_formattext = "";
{
_selected = _x select 0;
_formattext = format ["%1%2",_formattext,_selected];
} foreach _call_array;
_finalnumber = parseText format["<t font='EtelkaNarrowMediumPro' color='#7A7A7A' align='center' size='1.5'>%1</t>",_formattext];
((uiNamespace getVariable "cellphone") displayCtrl 6668) ctrlSetStructuredText _finalnumber;
uiNamespace setvariable ["call_array",_call_array];
};

fnc_selectapp = {
_selectedapp = (_this select 0) - 1;
_currentapp = tabletapp_array select _selectedapp;
_dialogcode = _currentapp select 5;
if (_dialogcode == "1") exitwith {ctrlShow[7767,true]; ctrlShow[7768,true]; ctrlShow[7769,true]; [] spawn SOCK_fnc_syncData;}; // Synchronize
if (_dialogcode == "2") exitwith {closedialog 0; [] spawn life_fnc_settingsmenu;}; // Synchronize
closedialog 0;
createdialog _dialogcode;
};

fnc_checkbalance = {
_dialog = findDisplay 12196;
_mcash = _dialog displayCtrl 2257;
_mbank = _dialog displayCtrl 2256;
_mcash ctrlSetText format["$%1",[sjgoijrsJPIJ9899] call life_fnc_numberText];
_mbank ctrlSetText format["$%1",[sjgoijrsJPIJ99] call life_fnc_numberText];
_near = _dialog displayCtrl 6254;
_background = uiNamespace getvariable "background";
((uiNamespace getVariable "cellphone") displayCtrl 5521) ctrlSetText _background;
_near_units = [];
{ if(player distance _x < 10) then {_near_units set [count _near_units,_x];};} foreach playableUnits;
{
	if(!isNull _x && alive _x && player distance _x < 10 && _x != player) then
	{
		_near lbAdd format["%1 - %2",_x getVariable["realname",name _x], side _x];
		_near lbSetData [(lbSize _near)-1,str(_x)];
	};
} foreach _near_units;
lbSetCurSel [6254, 0];
};


fnc_loopsenzo = {
while {TRUE} do {
sleep 300;
if (batterylevel > 0) then {
batterylevel = batterylevel - 1;
} else {
};
if (batterylevel > 100) then {
batterylevel = 100;
};
};
};

fnc_chargephone = {
	if (vehicle player == player ) exitwith {};
	_owner = (vehicle player) getvariable "charging";
	if (isnil "_owner") then { (vehicle player) setvariable ["charging","none",true]; _owner = "none"; };
	if (!(_owner == "none")) exitwith {["Someone else is currently charging his phone.",20,"red"] call A3L_Fnc_Msg;};
	(vehicle player) setvariable ["charging",(str player),true];
	_owner = player;

	_vehicle = (vehicle player);



	ischarging = true;
	null = [] spawn
	{ 
	while {ischarging} do {
	sleep 20;
	batterylevel = batterylevel + 1;
	};
	};
	_cellphonecharge = parseText format ["<t font='EtelkaNarrowMediumPro' color='#93A300' size='1' align='center'>Plugging in cellphone...</t>",batterylevel,"%"];
	((uiNamespace getVariable "a3lhud") displayCtrl 16425) ctrlSetStructuredText _cellphonecharge;
	sleep 0.5;
	while {(vehicle player == _vehicle) && (ischarging) && (batterylevel < 101)} do {
	sleep 1;
	_cellphonecharge = parseText format ["<t font='EtelkaNarrowMediumPro' color='#5FC900' size='1' align='center'>[%1%2]Charging Cellphone...</t>",batterylevel,"%"];
	((uiNamespace getVariable "a3lhud") displayCtrl 16425) ctrlSetStructuredText _cellphonecharge;
	};
	_cellphonecharge = parseText format ["<t font='EtelkaNarrowMediumPro' color='#8C0000' size='1' align='center'>Stopped charging!</t>"];
	((uiNamespace getVariable "a3lhud") displayCtrl 16425) ctrlSetStructuredText _cellphonecharge;
	_vehicle setvariable ["charging","none",true];
	ischarging = false;
	sleep 1;
	_cellphonecharge = parseText format ["<t font='EtelkaNarrowMediumPro' color='#5FC900' size='1' align='center'></t>"];
	((uiNamespace getVariable "a3lhud") displayCtrl 16425) ctrlSetStructuredText _cellphonecharge;
};

[] spawn fnc_loopsenzo;