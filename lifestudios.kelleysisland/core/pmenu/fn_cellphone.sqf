#include <macro.h>
/*
	File: fn_cellphone.sqf
	Author: Alan, completely edited by Zannaza for A3L.
	
	Description:
	Opens the cellphone menu?
*/
private["_display","_units","_type"];

disableSerialization;
waitUntil {!isNull findDisplay 12193};
_display = findDisplay 12193;
_number = _display displayCtrl 8876;
_background = uiNamespace getvariable "background";
((uiNamespace getVariable "cellphone") displayCtrl 5521) ctrlSetText _background;
_to = _this select 0;

if (!(_to == "0")) then {
_number ctrlSetText _to;
};

ctrlSetText [8872, ""];

_amountofsms = count tablet_inbox;
_units2 = _display displayCtrl 8871;
{
_arrnumber = _forEachIndex;
_sendplayer = _x select 0;
_message = _x select 1;
_date = _x select 2;
if ((_date select 4) < 10) then {
_mins = format ["0%1",(_date select 4)];
} else { _mins = (_date select 4)};
_datecomp = format ["(%6) %1-%2-%3 | %4:%5",(_date select 2),(_date select 1),(_date select 0),(_date select 3),(_date select 4),name player];
_units2 lbAdd _datecomp;
} foreach tablet_inbox;
[_amountofsms] spawn fnc_smsmenuopen;
[] spawn sms_getinbox;
lbSetCurSel [8876, 0];
lbSetCurSel [8871,0];


