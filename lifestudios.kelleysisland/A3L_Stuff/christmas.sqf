A3L_RandomCar =
{
	private ["_random","_vehicle","_package"];
	_package = _this select 0;
	deletevehicle _package;
	
	_vehicle = "C_Kart_01_Red_F";
	_random = floor(random 99);
	
	_cararray = [
	"C_Kart_01_Red_F",	// 20
	"Jonzie_Mini_Cooper", // 35
	"S_Rangerover_Green", // 43
	"A3L_F350Red", // 53
	"A3L_FordKaWhite", // 59
	"A3L_SuburbanRed", // 65
	"A3L_GrandCaravanGreen", // 70
	"A3L_ChallengerGreen", // 80
	"A3L_TaurusRed", // 86
	"IVORY_T6A_1", // 88
	"A3L_Jetski", // 90
	"A3L_Ship", // 92
	"S_Skyline_White", // 94
	"S_PorscheRS_White", // 96
	"S_McLarenP1_White", // 97
	"A3L_RX7_White", // 98
	"A3L_Veyron_red" // 99
	];
	
	if ((_random >= 0) && (_random < 20)) then
	{
		_vehicle = _cararray select 0;
	};
	
	if ((_random >= 20) && (_random < 35)) then 
	{
		_vehicle = _cararray select 1;
	};
	
	if ((_random >= 35) && (_random < 43)) then
	{
		_vehicle = _cararray select 2;
	};
	
	if ((_random >=43) && (_random < 53)) then
	{
		_vehicle = _cararray select 3;
	};
	
	if ((_random >=53) && (_random < 59)) then
	{
		_vehicle = _cararray select 4;
	};
	
	if ((_random >= 59) && (_random < 65)) then
	{
		_vehicle = _cararray select 5;
	};
	
	if ((_random >= 65) && (_random < 70)) then
	{
		_vehicle = _cararray select 6;
	};
	
	if ((_random >= 70) && (_random < 80)) then
	{
		_vehicle = _cararray select 7;
	};
	
	if ((_random >= 80) && (_random < 86)) then
	{
		_vehicle = _cararray select 8;
	};
	
	if ((_random >=86) && (_random < 88)) then
	{
		_vehicle = _cararray select 9;
	};
	
	if ((_random >= 88) && (_random < 90)) then
	{
		_vehicle = _cararray select 10;
	};
	
	if ((_random >= 90) && (_random < 92)) then
	{
		_vehicle = _cararray select 11;
	};
	
	if ((_random >= 92) && (_random < 94)) then
	{
		_vehicle = _cararray select 12;
	};
	
	if ((_random >= 94) && (_random < 96)) then
	{
		_vehicle = _cararray select 13;
	};
	
	if ((_random >= 96) && (_random < 97)) then 
	{
		_vehicle = _cararray select 14;
	};
	
	if ((_random >= 97) && (_random < 98)) then
	{
		_vehicle = _cararray select 15;
	};
	
	if ((_random >= 98) && (_random < 100)) then 
	{
		_vehicle = _cararray select 16;
	};
	
	
[(getPlayerUID player),playerSide,_vehicle,0] remoteExec ["A3L_createVehicle",2];

	[format ["You unpacked a brand new %1. It is in your garage!",(getText (configFile >> "CfgVehicles" >> _vehicle >> "displayName"))],50,"blue"] call A3L_Fnc_Msg;
};

A3L_RandomPackage =
{
	private ["_random","_amount","_package","_items","_item"];
	_package = _this select 0;
	deletevehicle _package;
	_random = floor(random 110);
	
	if ((_random >= 0) && (_random < 50 )) exitwith
	{
		_amount = floor (random 15000);
		life_cash = life_cash + _amount;
		[format ["You unpacked $%1",_amount],50,"blue"] call A3L_Fnc_Msg;
	};
	
	if ((_random >= 50) && (_random < 60)) exitwith
	{
		_amount = floor (random 25000);
		life_cash = life_cash + _amount;
		[format ["You unpacked $%1",_amount],50,"blue"] call A3L_Fnc_Msg;
	};	
	
	_items = [
	"blastingcharge", // 61
	"redgull", // 70
	"sunflower", // 72
	"wheat", // 74
	"corn", // 76
	"bean", // 78
	"turtlesoup", // 80
	"lockpick", // 82
	"cannabis", // 84
	"raw chicken", // 86
	"raw goat meat", // 87
	"raw sheep meat", // 90
	"raw rabbit", // 92
	"cigarette", // 94
	"Rax's Rum", // 95
	"zoobeer", // 96
	"coffee", // 97
	"donuts", // 98
	"storagebig" // 99
	];
	
	_item = "none";
	
	if ((_random >= 60) && (_random < 61)) then
	{
		_item = _items select 0;
	};
	
	if ((_random >= 61) && (_random < 70)) then
	{
		_item = _items select 1;
	};
	
	if ((_random >= 70) && (_random < 72)) then 
	{
		_item = _items select 2;
	};
	
	if ((_random >= 72) && (_random < 74)) then
	{
		_item = _items select 3;
	};
	
	if ((_random >= 74) && (_random < 76)) then
	{
		_item = _items select 4;
	};
	
	if ((_random >= 76) && (_random < 78)) then
	{
		_item = _items select 5;
	};
	
	if ((_random >= 78) && (_random < 80)) then
	{
		_item = _items select 6;
	};
	
	if ((_random >= 80) && (_random < 82)) then
	{
		_item = _items select 7;
	};
	
	if ((_random >= 82) && (_random < 84)) then
	{
		_item = _items select 8;
	};
	
	if ((_random >= 84) && (_random < 86)) then
	{
		_item = _items select 9;
	};
	
	if ((_random >= 86) && (_random < 87)) then
	{
		_item = _items select 10;
	};
	
	if ((_random >= 87) && (_random < 90)) then
	{
		_item = _items select 11;
	};
	
	if ((_random >= 90) && (_random < 92)) then
	{
		_item = _items select 12;
	};
	
	if ((_random >= 92) && (_random < 94)) then
	{
		_item = _items select 13;
	};
	
	if ((_random >= 94) && (_random < 95)) then
	{
		_item = _items select 14;
	};
	
	if ((_random >= 95) && (_random < 96)) then
	{
		_item = _items select 15;
	};
	
	if ((_random >= 96) && (_random < 97)) then
	{
		_item = _items select 16;
	};	
	
	if ((_random >= 97) && (_random < 99)) then
	{
		_item = _items select 17;
	};		
	
	if ((_random >= 99) && (_random < 100)) then
	{
		_item = _items select 18;
	};			
	
	if (!(_item == "none")) exitwith
	{	
		_amount = 1 + (floor(random 2));
		[true,_item,_amount] call life_fnc_handleInv;
		[format["You unpacked %1 %2('s)",_amount,_item],50,"blue"] call A3L_fnc_msg;
	};
	
	if ((_random >= 100) && (_random < 105)) exitwith
	{
		_item = "santahat";
		[format["You unpacked a %1",_item],50,"blue"] call A3L_fnc_msg;
		_holder = "groundweaponholder" createVehicle (getpos player);
		_holder addItemCargoGlobal [_item,1];
	};
	
	if ((_random >= 105) && (_random < 111)) then
	{
		_item = "A3L_FuckCaidenPants";
		["You unpacked a #fuckcaiden shirt!",50,"blue"] call A3L_fnc_msg;
		_holder = "groundweaponholder" createVehicle (getpos player);
		_holder addItemCargoGlobal [_item,1];
	};
	
};
