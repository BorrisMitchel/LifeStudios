/*
	File: fn_ticketPay.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(life_cash < life_ticket_val) exitWith
{
	if(life_atmcash < life_ticket_val) exitWith 
	{
		hint localize "STR_Cop_Ticket_NotEnough";
[1,format[localize "STR_Cop_Ticket_NotEnoughNOTF",profileName]] remoteExec ["life_fnc_broadcast",life_ticket_cop];
		closeDialog 0;
	};
	hint format[localize "STR_Cop_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
	life_atmcash = life_atmcash - life_ticket_val;
	life_ticket_paid = true;
[0,format[localize "STR_Cop_Ticket_PaidNOTF",profileName,[life_ticket_val] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",west];
	closeDialog 0;
};

life_cash = life_cash - life_ticket_val;
life_ticket_paid = true;

[getPlayerUID player] remoteExec ["life_fnc_wantedRemove",2];
[0,format[localize "STR_Cop_Ticket_PaidNOTF",profileName,[life_ticket_val] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",west];
closeDialog 0;
[1,format[localize "STR_Cop_Ticket_PaidNOTF_2",profileName]] remoteExec ["life_fnc_broadcast",life_ticket_cop];
[life_ticket_val,player,life_ticket_cop] remoteExec ["life_fnc_ticketPaid",life_ticket_cop];
