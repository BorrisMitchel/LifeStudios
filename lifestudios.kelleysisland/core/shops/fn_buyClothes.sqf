/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};


_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

_playersTarget = cursorTarget;

if(_price > life_cash) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};

if (typeOf _playersTarget IN ["A3L_GMC_Van_Food","A3L_GMC_Van_General","A3L_GMC_Van_Clothing"] && count crew _playersTarget != 0) then {
	mobile_payment = _price * 0.8;
	_unit = (driver _playersTarget);
 	_price = _price * 0.85;
 	titleText["You have received a 15% discount, because you bought on the go!","PLAIN"];
 	_unit setVariable["totalmobile",mobile_payment,true];
}
else{
	life_cash = life_cash - _price;
};

life_clothesPurchased = true;
closeDialog 0;