#define __maxMessages 8
#define __messageTimeoutDuration 15 // in seconds
#define __IDC_main 100

A3L_Fnc_stripLineBreaks = {
#define _c_chr_backSlash 92
#define _c_chr_space 32
#define _c_chr_n 110
#define _c_chr_N 78
#define _c_chr_remove 990

_a = toArray _this;
for "_i" from 0 to ((count _a)-2) do // checked in pairs - exclude last chr
{
  if ((_a select _i == _c_chr_backSlash) && (_a select (_i+1) in [_c_chr_N, _c_chr_n])) then
  {
    _a set [_i, _c_chr_space]; // leave one space
    _a set [_i+1, _c_chr_remove]; // remove this
  };
};
_a = _a-[_c_chr_remove]; // strip out all deleted chars
toString _a // result

};

A3L_Fnc_replaceAmpersands = {
// Desc: replace "&" characters with "&amp;"
// Param: string to convert 
// Result: string
//-----------------------------------------------------------------------------
private ["_a", "_r", "_i", "_j", "_c"];

// &amp;
#define _c_chr_ampersand 38
#define _c_chr_a 97
#define _c_chr_m 109
#define _c_chr_p 112
#define _c_chr_semiColon 59

_a = toArray _this;
_r = +_a; // save "some" potential effort of copying.
_j = 0;

for "_i" from 0 to ((count _a)-1) do
{
	_c = _a select _i;
	_r set [_j, _c];
  if (_c == _c_chr_ampersand) then
  {
    _r set [_j+0, _c_chr_ampersand];
    _r set [_j+1, _c_chr_a];
    _r set [_j+2, _c_chr_m];
    _r set [_j+3, _c_chr_p];
    _r set [_j+4, _c_chr_semiColon];
		_j = _j + 5; // len of "&amp;"
  }
	else
	{
		_j = _j + 1;
	};
};

toString _r // result
};



A3L_fnc_requestLayer = {
private ["_result", "_id"];

if (isNil "A3L_lastUsedLayer1") then {A3L_lastUsedLayer1 = 27407}; // (negative layers no longer work in 1.05)
if (isNil "A3L_lastUsedLayer2") then {A3L_lastUsedLayer2 = 28507};
if (isNil "A3L_lastUsedLayer3") then {A3L_lastUsedLayer3 = 29607};

_id = 2;
if (!isNil "_this") then
{
	if (typeName _this == typeName []) then
	{
		_id = (_this select 0);
	}
	else
	{
		if (typeName _this == typeName 88) then
		{
			_id = _this;
		};
	};
};

switch _id do
{
	case 1:
	{
		A3L_lastUsedLayer1 = A3L_lastUsedLayer1+1; 
		_result = A3L_lastUsedLayer1;
	};
	case 3:
	{
		A3L_lastUsedLayer3 = A3L_lastUsedLayer3+1; 
		_result = A3L_lastUsedLayer3;
	};
	default
	{
		A3L_lastUsedLayer2 = A3L_lastUsedLayer2+1; 
		_result = A3L_lastUsedLayer2;
	};
};

//[__FILE__, format ['Requested UI layer: %1 %2', _result, _this]] call A3L_fnc_log;
_result
};

A3L_fnc_messages_display = {
#define __maxMessages 8
#define __messageTimeoutDuration 15 // in seconds
#define __IDC_main 100

private ["_ctrl", "_text", "_block"];

if (isDedicated) exitWith {};
if (isNil "A3L_Messages_array") exitWith {};
disableSerialization;

_block = "";
for "_i" from 0 to (__maxMessages - 1) do
{
	_text = (A3L_Messages_array select _i) select 0;
	if (_text != "") then
	{
		_block = _block + _text + "<br />";
	};
};

_ctrl = (uiNamespace getVariable ["A3L_messages_display", displayNull]) displayCtrl __IDC_main;
_ctrl ctrlSetStructuredText parseText _block;

};

A3L_Fnc_Msg = {
#define __maxMessages 8
#define __messageTimeoutDuration 15 // in seconds
#define __IDC_main 100

private ["_message", "_duration", "_hasDurationParam", "_i", "_id", "_params", "_subName", "_subText"];

if (isDedicated) exitWith {};
if (isNil "A3L_Messages_array") exitWith {};
disableSerialization;

_message = _this;
_duration = __messageTimeoutDuration;
_hasDurationParam = false;
if (typeName _this == typeName []) then
{
	_message = _this select 0;
	//-----------------------------------
	if (count _this > 1) then
	{
		private "_dur";
		_dur = _this select 1;
		if (typeName _dur == typeName 99) then
		{
			_hasDurationParam = true;
			if (_dur > 0 and _dur <= 30) then
			{
				_duration = _dur;
			};
		};
	};
};
_message = _message call A3L_fnc_stripLinebreaks;
_message = _message call A3L_fnc_replaceAmpersands;

c_colorST_A2_text = "#FF99C578"; // A2 pale/pastel green text
c_colorST_OA_text = "#FFE0D8A1"; // A2 OA pale/pastel yellow text
c_colorST_orange = "#FFFF6A00"; // warning orange
c_colorST_red = "#FFD30000"; // error red
c_colorST_blue = "#00AEFF"; // blue
c_colorST_gray = "#FF808080"; // gray

if (typeName _this == typeName []) then
{
if (count _this == 3) then { 
msgcolour = _this select 2;

if (msgcolour == "green") then {
_message = format ["<t color='%1'>%2", c_colorST_A2_text,_message];
};

if (msgcolour == "yellow") then {
_message = format ["<t color='%1'>%2", c_colorST_OA_text,_message];
};

if (msgcolour == "orange") then {
_message = format ["<t color='%1'>%2", c_colorST_orange,_message];
};

if (msgcolour == "red") then {
_message = format ["<t color='%1'>%2", c_colorST_red,_message];
};

if (msgcolour == "blue") then {
_message = format ["<t color='%1'>%2", c_colorST_blue,_message];
};

if (msgcolour == "gray") then {
_message = format ["<t color='%1'>%2", c_colorST_gray,_message];
};

};
};



/*
// create blank line at top of list, by pushing all rows down by 1 (in reverse), cutting last row off (overwriting).
_i = __maxMessages - 1;
// process list in reverse from last to first
while {_i > 0} do
{
	A3L_Messages_array set [_i, A3L_Messages_array select (_i-1)];

	_i = _i - 1;
};
*/
// create blank line at bottom of list, by pushing all rows up by 1, cutting first row off (overwriting).
_i = 0;
while {_i < __maxMessages - 1} do
{
	A3L_Messages_array set [_i, A3L_Messages_array select (_i+1)];

	_i = _i + 1;
};

// hopefully these 2 lines behave like an atomic operation
_id = A3L_Messages_counter + 1;
A3L_Messages_counter = A3L_Messages_counter + 1;

/*
// add message to top of list
A3L_Messages_array set [0, [_message, _id]];
*/
// add message to bottom of list, as done in all other Arma lists, like chat, etc.
A3L_Messages_array set [__maxMessages - 1, [_message, _id]];

call A3L_fnc_messages_display;
//---------------------------------------------------------
[_id, _duration] spawn
{
	private ["_id", "_duration"];
	_id = _this select 0;
	_duration = _this select 1;

	// wait for message display duration to time out
	sleep _duration;

	// find the original message index, which may have moved during the time out period;
	// or it may have been already pushed off the list, in which case it won't find it.
	{
		if (_x select 1 == _id) exitWith
		{
			A3L_Messages_array set [_forEachIndex, ["", -1]];
			call A3L_fnc_messages_display;
		};
	} forEach A3L_Messages_array;
};
};


A3L_Messages_array = [];
A3L_Messages_counter = 0;

for "_i" from 0 to (__maxMessages - 1) do
{
	// record format: [caption text, unique id for hide timeout handling]
	A3L_Messages_array set [_i, ["", -1]];
};

[] spawn
{
	if (isDedicated) exitWith {};
	
	_layer = 736713;
	if (!isNil "A3L_fnc_requestLayer") then {_layer = [3, "MessagesList"] call A3L_fnc_requestLayer};

	waitUntil {!isNull (findDisplay 46)};
	_layer cutRsc ["A3L_Messages", "PLAIN"];

	waitUntil {!isNil "A3L_fnc_messages_display"};
	[] call A3L_fnc_messages_display;
};

["Message system initialized succesfully!",10,"gray"] call A3L_Fnc_Msg;
Sleep 3;
["Welcome to ArmA 3 Life!",10,"green"] call A3L_Fnc_Msg;