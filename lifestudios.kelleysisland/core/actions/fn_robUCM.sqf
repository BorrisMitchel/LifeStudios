/*
Union CITY MARKET
*/
private["_robber","_shop","_timer","_funds","_dist","_success"];  
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; 
_action = [_this,2] call BIS_fnc_param;
_timer = 60;
_funds = 38000 + round(random 52000); 
_dist = _robber distance _shop;
_success = false;

if(side _robber != civilian) exitWith { hint "You are not civilian!"; };

_cops = (west countSide playableUnits);
if(_cops < 3) exitWith { hint "My Register is locked until more Police are on Duty! (3+)"; }; 

if(vehicle player != _robber) exitWith { hint "You need to exit your vehicle!"; }; 
if (alive _robber && {currentWeapon _robber != ""} && {_funds > 0}) then {

[1,format["911 DISPATCH: Union City Market has triggered an emergency alarm!",_storename]] remoteExec ["life_fnc_broadcast",west];
hint format ["Robbing the Store! Wait %1 sec.",_timer];

_shop removeAction _action;//Deleting the action,so it won't be spammed

while {true} do {
		hintsilent format ["%1 seconds remaining.",_timer];
		sleep 1;
		_timer = _timer - 1;
		_dist = _robber distance _shop;

		if (!alive _robber) exitwith
			{
[1,format["911 DISPATCH: ONE ASSAILANT HAS DIED: Union City Market",_storename]] remoteExec ["life_fnc_broadcast",west];
				hint "STORE CLERK: Oh damn, you just got blood on my cash register.";
					sleep 450;
				_action = _shop addAction["Rob Store",life_fnc_robShops];
				};
			if (_dist >= 6) exitwith {
[1,format["911 DISPATCH: ONE ASSAILANT HAS FLED: Union City Market",_storename]] remoteExec ["life_fnc_broadcast",west];
			hint "STORE CLERK: Thank you for not robbing my store!";
				sleep 450;
			_action = _shop addAction["Rob Store",life_fnc_robShops];
			};
			if (currentWeapon _robber == "") exitwith {
[1,format["911 DISPATCH: ONE ASSAILANT HAS FLED: Union City Market",_storename]] remoteExec ["life_fnc_broadcast",west];
			hint "STORE CLERK: I dont fear you anymore!";
				sleep 450;
			_action = _shop addAction["Rob Store",life_fnc_robShops];
			};

if(_timer < 1) exitWith { _success = true; };
};
if(!_success) exitWith { }; 
life_cash = life_cash + _funds; //Self explanatory
hint format["You have stolen $%1",_funds];

[1,format["Erie County NEWS: Union City Market was just hit for $%2", _shop, [_funds] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",civilian];
_funds = 0;
life_use_atm = false;
sleep 180;
life_use_atm = true;
sleep 1200;//Cooldown between the robberies
_action = _shop addAction["Rob Store",life_fnc_robLG];
};
