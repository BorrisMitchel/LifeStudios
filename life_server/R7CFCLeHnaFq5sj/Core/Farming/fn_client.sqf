fnc_harvest = {
_growprcnt = cursortarget getVariable "growprcnt";
_plants_array = [
	["A3L_Wheat","wheat","A3L_Seed_wheat",[0.75,13500,80,2,2,1]],
	["A3L_Sunflower","sunflower","A3L_Seed_sunflower",[0.60,26192,100,2,2,1]],
	["A3L_Cotton","cotton","A3L_Seed_cotton",[0.60,41410,125,2,2,1]],
	["A3L_Corn","corn","A3L_Seed_corn",[0.50,41410,140,2,2,1]],
	["A3L_Beans","beans","A3L_Seed_Beans",[0.60,78085,175,2,2,1]],
	["Ficus_Bush_1","olive","A3L_Seed_wheat",[0.60,171500,250,2,2,1]],
	["A3L_Pumpkin","pumpkin","A3L_Seed_Pumpkin",[0.50,171500,300,2,2,1]],
	["Oleander2","opium","A3L_Seed_poppy",[0.70,318286,325,2,2,1]],
	["A3L_Cannabis","cannabis","A3L_Seed_Cannabis",[0.60,351084,350,2,2,1]]
];


_player = player;
_plant = cursortarget;
_plantclsname = typeOf cursortarget;
_arraypart = "0";
{
_selectedarray = _forEachIndex;
_arrselplant = _x select 0;
if(_plantclsname == _arrselplant) then {_arraypart = _selectedarray;};
} foreach _plants_array;
_newarray = _plants_array select _arraypart;
_isillegal = 0;
if (side player == west) then {
	_illegalist = ["opium","cannabis"];
	_theplant = _newarray select 2;
	hint format ["%1",_theplant];
	{
	if (_theplant == _x) then {_isillegal = 1;};
	} foreach _illegalist;
	if (_isillegal == 1) exitwith 
	{ 
	_text = format ["You received 500 for destroyed the %1 plant.",_theplant];
	sjgoijrsJPIJ99 = sjgoijrsJPIJ99 + 500;
	[_text,20,"green"] call A3L_Fnc_msg;
	deleteVehicle _plant;
	[250,"farming"] spawn fnc_addexp;
	};
};
if (_isillegal == 1) exitwith {};
if (_growprcnt == 100) Then {
_harvestitem = _newarray select 1;
_itemclassname = _newarray select 2;
_exparr = _newarray select 3;
_maxexp = _exparr select 1;
_chance = 1;
_success = true;
if (_maxexp > exp_farming) then {
_chance =  (1-(_exparr select 0))*(exp_farming/_maxexp)+(_exparr select 0);
if ((random 1) > _chance) then {_success = false};
};
if (!_success) exitwith {["You failed harvesting the plant!",20,"red"] call A3L_Fnc_msg;deleteVehicle _plant;};
_gainedexp = _exparr select 2;
_itemvalue = _exparr select 3;
_extra = _exparr select 4;
_maxlevelbonus = _exparr select 5;
if (!(_chance == 1)) then { _maxlevelbonus = 0; };
_roundextra = round (random _extra);
_totalharvest = _itemvalue + _roundextra + _maxlevelbonus;
if(([true,_harvestitem,_totalharvest] call life_fnc_handleInv)) then
{
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
[_gainedexp,"farming"] spawn fnc_addexp;
deleteVehicle _plant;
[format ["You harvested some %1",_harvestitem],20,"green"] call A3L_Fnc_msg;
} else {
["Your inventory is full",20,"red"] call A3L_Fnc_msg;
};
} else {
if (_growprcnt < 10) Then {
["This plant was just placed and is not ready to be harvested yet",20,"blue"] call A3L_Fnc_msg;
} else {
if (_growprcnt < 40) Then {
["This plant is almost half-grown",20,"blue"] call A3L_Fnc_msg;
} else {
if (_growprcnt < 80) Then {
["This plant is about half-grown",20,"blue"] call A3L_Fnc_msg;
} else {
if (_growprcnt < 100) Then {
["This plant is almost ready to be harvested",20,"blue"] call A3L_Fnc_msg;
};};};};};
};