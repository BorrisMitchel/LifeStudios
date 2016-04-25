/*
	File: fn_giveItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected item & amount to the selected player and
	removes the item & amount of it from the players virtual
	inventory.
*/
private["_unit","_val"];
_val = ctrlText 5931;
ctrlShow[5921,false];
if((lbCurSel 5932) == -1) exitWith {hint "No one was selected!";ctrlShow[5921,true];};
_unit = lbData [5930,lbCurSel 5930];
_unit = call compile format["%1",_unit];
if((lbCurSel 5932) == -1) exitWith {hint "You didn't select an item you wanted to give.";ctrlShow[5921,true];};
_item = lbData [5932,(lbCurSel 5932)];
if(isNil "_unit") exitWith {ctrlShow[5921,true];};
if(_unit == player) exitWith {ctrlShow[5921,true];};
if(isNull _unit) exitWith {ctrlShow[5921,true];};

//A series of checks *ugh*
if(!([_val] call fnc_isnumber)) exitWith {hint "You didn't enter an actual number format.";ctrlShow[5921,true];};
if(parseNumber(_val) <= 0) exitWith {hint "You need to enter an actual amount you want to give.";ctrlShow[5921,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "The selected player is not within range";};
if(!([false,_item,(parseNumber _val)] call life_fnc_handleInv)) exitWith {hint "Couldn't give that much of that item, maybe you don't have that amount?";ctrlShow[5921,true];};
[_unit,_val,_item,player] remoteExec ["life_fnc_receiveItem",_unit];
_type = [_item,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["You gave %1 %2 %3",_unit getVariable["realname",name _unit],_val,_type];
[] call life_fnc_p_updateMenu;

ctrlShow[5921,true];
