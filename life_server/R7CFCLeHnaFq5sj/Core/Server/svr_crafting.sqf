/*
	File: crafting.sqf
	Author: Arma 3 Life - Zannaza
	
	Description:
	This is a server function, It creates the furnace and workbench.
	


svr_startfur = 
{
	_smelter = _this select 0;
	_startitem = [];
	_furnacearr = [
			// boxes crafting
			["Box of Iron Ingots",1,[["Iron Ore",5],["Coal",2]],"A3L_Crate_Iron",[1]],
			["A pack of Bricks",1,[["Rock",5],["Coal",1]],"Land_Bricks_V1_F",[1]],
			["Box of Diamonds",1,[["Raw Diamond",5],["Rock",2]],"A3L_Crate_Diamond",[1]],
			["Box of Coal",1,[["Coal",5]],"A3L_Crate_Coal",[1]],
			["Coal",5,[["Box of Coal",1]],"A3L_Bits_Rock_S_Coal",[0]],
			// weapon crafting
			["Ak47",1,[["Box of Iron Ingots",6],["Box of planks",1]],"none",[2,"A3L_AK47","weapon"]],
			["SA61",1,[["Box of Iron Ingots",5],["Box of planks",1]],"none",[2,"A3L_SA61","weapon"]],
			["AK47s",1,[["Box of Iron Ingots",6],["Box of planks",1]],"none",[2,"A3L_AK47s","weapon"]],
			["AK47s Gold",1,[["Box of Iron Ingots",6],["Box of planks",1],["Box of Diamonds",1]],"none",[2,"A3L_AK47sgold","weapon"]],
			["AKS74",1,[["Box of Iron Ingots",8],["Box of planks",1]],"none",[2,"A3L_AKS74","weapon"]],
			["Glock 17",1,[["Box of Iron Ingots",4],["Box of planks",1]],"none",[2,"A3L_Glock17","weapon"]],
			["M9",1,[["Box of Iron Ingots",4],["Box of planks",1]],"none",[2,"A3L_M9","weapon"]],
			["Makarov",1,[["Box of Iron Ingots",3],["Box of planks",1]],"none",[2,"A3L_makarov","weapon"]],
			["1911",1,[["Box of Iron Ingots",4],["Box of planks",1]],"none",[2,"A3L_1911","weapon"]],
			["Taurus",1,[["Box of Iron Ingots",5],["Box of planks",1]],"none",[2,"A3L_Taurus","weapon"]],
			["Taurus Gold",1,[["Box of Iron Ingots",5],["Box of planks",1],["Box of Diamonds",1]],"none",[2,"A3L_TaurusGold","weapon"]],
			["CZ550",1,[["Box of Iron Ingots",5],["Box of planks",1]],"none",[2,"A3L_CZ550","weapon"]],
			["Turtle Harpoon",1,[["Box of Iron Ingots",5],["Box of planks",1]],"none",[2,"arifle_SDAR_F","weapon"]],
			["Paintball Gun",1,[["Box of Iron Ingots",2],["Box of planks",1]],"none",[2,"A3L_PaintballGun","weapon"]],
			// magazine crafting
			["Ak47s Magazine",1,[["Box of Iron Ingots",3],["Box of planks",1]],"none",[2,"A3L_AK47sMag","magazine"]],
			["SA61 Magazine",1,[["Box of Iron Ingots",3],["Box of planks",1]],"none",[2,"A3L_SA61mag","magazine"]],
			["Glock 17 Magazine",1,[["Box of Iron Ingots",2],["Box of planks",1]],"none",[2,"A3L_Glock17mag","magazine"]],
			["M9 Magazine",1,[["Box of Iron Ingots",2],["Box of planks",1]],"none",[2,"A3L_M9mag","magazine"]],
			["Makarov Magazine",1,[["Box of Iron Ingots",2],["Box of planks",1]],"none",[2,"A3L_makarovmag","magazine"]],
			["1911 Magazine",1,[["Box of Iron Ingots",2],["Box of planks",1]],"none",[2,"A3L_1911mag","magazine"]],
			["Taurus Magazine",1,[["Box of Iron Ingots",2],["Box of planks",1]],"none",[2,"A3L_Taurusmag","magazine"]],
			["CZ550 Bullets",5,[["Box of Iron Ingots",1],["Box of planks",1]],"none",[2,"A3L_CZ550mag","magazine"]],
			["Turtle Harpoon Magazine",1,[["Box of Iron Ingots",1],["Box of planks",1]],"none",[2,"20Rnd_556x45_UW_mag","magazine"]],
			["Paintballs",1,[["Box of Iron Ingots",1],["Box of planks",1]],"none",[2,"A3L_Paintballs","magazine"]],
			// scopes/items crafting
			["CZ550 Scope",1,[["Box of Iron Ingots",3],["Box of Diamonds",1],["Box of planks",1]],"none",[2,"A3L_CZ550Scope","item"]],
			["Red Dot Scope",1,[["Box of Iron Ingots",3],["Box of Diamonds",1],["Box of planks",1]],"none",[2,"A3L_RedDot","item"]]
			// furniture crafting
	];
	_smelter setVariable ["compiledinfo", _startitem, true];
	_smelter setVariable ["compiledWinfo", _startitem, true];
	_smelter setVariable ["craftinginfo", _furnacearr, true];
	_smelter setVariable ["inuse", "none", true]; 
};


svr_startwb = 
{
	_workbench = _this select 0;
	_startitem = [];
	_workbencharr = [
			// boxes crafting
			["Box of planks",1,[["Ficus Log",5]],"A3L_Crate_Wood",[1]],
			["Box of planks",1,[["Olive Log",5]],"A3L_Crate_Wood",[1]],
			["Box of planks",1,[["Paper Mulberry Log",5]],"A3L_Crate_Wood",[1]],
			// furniture crafting
			["Old Table",1,[["Box of planks",1]],"A3L_OldTable",[1]],
			["Plastic Chair",1,[["Box of planks",1]],"Land_ChairPlastic_F",[1]],
			["Wooden Chair",1,[["Box of planks",1]],"Land_ChairWood_F",[1]],
			["Desk",1,[["Box of planks",2]],"Land_TableDesk_F",[1]],
			["Metal Shelves",1,[["Box of planks",1]],"Land_ShelvesMetal_F",[1]],
			["Bench",1,[["Box of planks",1]],"Land_Bench_F",[1]],
			["Large Table",1,[["Box of planks",3]],"Land_WoodenTable_large_F",[1]],
			["Small Table",1,[["Box of planks",2]],"Land_WoodenTable_small_F",[1]],
			["Khaki Shelves",1,[["Box of planks",1]],"Land_ShelvesWooden_khaki_F",[1]],
			["Blue Shelves",1,[["Box of planks",1]],"Land_ShelvesWooden_blue_F",[1]],
			["Wooden Shelves",1,[["Box of planks",2]],"Land_ShelvesWooden_F",[1]],
			["Office Cabinet",1,[["Box of planks",2]],"Land_OfficeCabinet_01_F",[1]],
			["Tall Metal Rack",1,[["Box of planks",1]],"Land_Metal_rack_Tall_F",[1]],
			["Short Metal Rack",1,[["Box of planks",1]],"Land_Metal_rack_F",[1]],
			["Office Chair",1,[["Box of planks",1]],"Land_OfficeChair_01_F",[1]],
			["Office Table",1,[["Box of planks",2]],"OfficeTable_01_new_F",[1]],
			["Used Office Table",1,[["Box of planks",2]],"OfficeTable_01_old_F",[1]],
			["Refrigerator",1,[["Box of planks",2],["Box of Iron Ingots",2]],"Fridge_01_closed_F",[1]],
			["Rattan Table",1,[["Box of planks",2]],"Land_RattanTable_01_F",[1]],
			["Rattan Chair",1,[["Box of planks",2]],"Land_RattanChair_01_F",[1]],
			["Work Bench",1,[["Box of planks",2]],"Land_Workbench_01_F",[1]],
			["Mobile Scaffolding",1,[["Box of planks",4]],"Land_MobileScaffolding_01_F",[1]],
			["Tool Trolley",1,[["Box of planks",2]],"Land_ToolTrolley_02_F",[1]] 
	];
	_workbench setVariable ["compiledinfo", _startitem, true];
	_workbench setVariable ["craftinginfo", _workbencharr, true];
	_workbench setVariable ["compiledWinfo", _workbencharr, true];
	_workbench setVariable ["inuse", "none", true]; 
};

svr_closetocraft = 
{
	_player = _this select 0;
	_craftitem = _this select 1;

	sleep 500;
	_inuse = _craftitem getvariable "inuse";
	_still = 0;
	_nearperson = nearestObjects [_craftitem, ["man"], 10];
	if (_inuse == "none") exitwith {};
	{
	if (_x == _player) then {
	_still = 1;
	};
	} foreach _nearperson;
	
	if (_still == 0) exitwith {
	_craftitem setvariable ["inuse","none",TRUE];
	};

	if (_still == 1) then {
	};
	[_player,_craftitem] spawn svr_closetocraft;
};
*/