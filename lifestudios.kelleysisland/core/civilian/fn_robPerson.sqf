/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(life_cash > 0) then
{
[life_cash] remoteExec ["life_fnc_robReceive",_robber];
[getPlayerUID _robber,_robber getVariable["realname",name _robber],"211"] remoteExec ["life_fnc_wantedAdd",2];
	[format ["%1 robbed $%2 from you.",_robber getVariable["realname",name _robber],[life_cash] call life_fnc_numberText],20,"red"] call A3L_Fnc_Msg;
[1,format[localize "STR_NOTF_Robbed",_robber getVariable["realname",name _robber],profileName,[life_cash] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",nil];
	life_cash = 0;
}
	else
{
[2,format[localize "STR_NOTF_RobFail",profileName]] remoteExec ["life_fnc_broadcast",_robber];
	[format ["%1 attempted to rob you, but you don't have money.",_robber],20,"red"] call A3L_Fnc_Msg;
};
