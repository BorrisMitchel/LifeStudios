/*
	File: crafting.sqf
	Author: Arma 3 Life - Zannaza
	
	Description:
	This is a CLIENT function, It crafts, opens the crafting etc...
	
*/

fnc_saveindb = {
	_totarr = a3l_weaponcrates +  a3l_cratesandfurniture;
	_nearestones = nearestObjects [player,_totarr, 5];
	_amount = count _nearestones;
	if (_amount == 0) exitwith {};
	_nearestobject = _nearestones select 0;
	_dataa = _nearestobject getvariable "data";
	if (isNil "_dataa") exitwith {
	};
	_id = _dataa select 3;
	[_id] call A3L_StorageSave;
};

fnc_opencrafting = 
{
	miningsmelter = _this select 0; 
	_inuse = miningsmelter getvariable "inuse";
	if ((_inuse == "none") OR (_inuse == str player)) then {
		createdialog "a3l_craft_menu";
		_display = findDisplay 5266;
		miningsmelter setVariable ["inuse",str player, true];
		_itemlistbox = _display displayCtrl 1500;
		_itemfinish_arr = [];
		_itemfinish_arr = miningsmelter getvariable "compiledinfo";
		{
			_text = format ["%1 (%2)",(_x select 0),(_x select 1)];
			_index = _itemlistbox lbAdd _text;
		} foreach _itemfinish_arr;
		_itemlistbox lbSetCurSel 0;
		[] call fnc_loadcraftin;
		[[player,(_this select 0)],"svr_closetocraft",false,false] spawn bis_fnc_MP;
	} else { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg;};
};



fnc_loadcraftin = 
{
	_display = findDisplay 5266;
	_craftlistbox = _display displayCtrl 1501;
	_itemfinish_arr = miningsmelter getvariable "compiledinfo";
	_furnacearr = miningsmelter getvariable "craftinginfo";
	_extrainfo = [];
	{
		_craftarray = _x select 2;
		_possible = 0; 
		_totalarr = [];
			{
			_selecteditem = _x select 0;
			_amount = _x select 1;
				{
					if (_selecteditem == _x select 0) then {
					if (_x select 1 >= _amount) then { _canmake = (_x select 1) / _amount; _totalarr = [_canmake] + _totalarr; _possible = _possible + 1; };};
				} foreach _itemfinish_arr;
			} foreach _craftarray;
		_amount = count (_x select 2); 
		if (_amount == _possible) then {
			_total = 1000000;
			{
				if (_x <= _total) then {_total = _x;}; 
			} foreach _totalarr;
			_total = floor _total;
			_craftable = _x select 0;
			_amount = _x select 1;
			_extrainfo = _extrainfo + [_craftable];
			_text = format ["%1 - (%2)",_craftable,_total];
			if (_amount > 1) then {
				_text = format ["%1x %2 - (%3)",_amount,_craftable,_total];
			};
			_index = _craftlistbox lbAdd _text;
		};
	} foreach _furnacearr;
	miningsmelter setVariable ["crafting_arr", _extrainfo, false];
	_amount = lbsize _craftlistbox; 
	if (_amount == 0) then { 
		_craftlistbox lbSetCurSel -1;
	};
};


fnc_removefromfnitur = 
{
	_display = findDisplay 5266; 
	_itemlistbox = _display displayCtrl 1500; 
	_craftlistbox = _display displayCtrl 1501; 
	_selected = lbCurSel _itemlistbox; 
	_itemfinish_arr = miningsmelter getvariable "compiledinfo";
	_inuse = miningsmelter getvariable "inuse";
	if (!(str player == _inuse)) exitwith { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg; closedialog 0; };
	if (_selected == -1) exitwith {};
	_infoarr = _itemfinish_arr select _selected;

	hint format ["%1",(_infoarr select 3)];
	if (((_infoarr select 3) select 0) == 0) then {
		_groundobject = createVehicle [(_infoarr select 2), (getpos player), [], 0, "NONE"];
	};
	if (((_infoarr select 3) select 0) == 1) then {
		[[player,(_infoarr select 2),[]],"A3L_StorageBuyItem",false,false] call BIS_fnc_MP;
	};
	if (((_infoarr select 3) select 0) == 2) then {
	closedialog 0;
	hint format ["MAKE PRINTSCREENS AND TELL ZANNAZA WHAT YOU DID TO DO THIS MAGIC"];
	};

	if ((_infoarr select 1) == 1) then {
		_itemfinish_arr set [_selected,"deletethis"];
		_itemfinish_arr = _itemfinish_arr - ["deletethis"];
	} else {
		_infoarr set [1,((_infoarr select 1) - 1)];
	};
	lbClear _itemlistbox;
	lbClear _craftlistbox;
	{
		_text = format ["%1 (%2)",(_x select 0),(_x select 1)];
		_index = _itemlistbox lbAdd _text;
	} foreach _itemfinish_arr;
	miningsmelter setVariable ["compiledinfo", _itemfinish_arr, true];
	_amount = lbsize _itemlistbox;
	if (_amount == 0) then {
		_itemlistbox lbSetCurSel -1;
	};
	[] call fnc_loadcraftin;
};


fnc_craftitem = 
{
	_display = findDisplay 5266; 
	_itemlistbox = _display displayCtrl 1500;
	_craftlistbox = _display displayCtrl 1501; 
	_itemfinish_arr = miningsmelter getvariable "compiledinfo";
	_itemfinishW_arr = miningsmelter getvariable "compiledWinfo";
	_furnacearr = miningsmelter getvariable "craftinginfo"; 
	_inuse = miningsmelter getvariable "inuse";
	if (!(str player == _inuse)) exitwith { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg; closedialog 0; };
	_selected = lbCurSel _craftlistbox; 
	if (_selected == -1) exitwith {};
	_crafting_arr = miningsmelter getVariable "crafting_arr";
	_craftitem = _crafting_arr select _selected;
	_amountyouget = 0;
	_classname = "";
	_iteminfo = [0];
	_isweapon = FALSE;
	{ 
		if ((_x select 0) == _craftitem) then { 
			_amountyouget = _x select 1;
			_classname = _x select 3;
			_iteminfo = _x select 4;
			if (_iteminfo select 0 == 2) then { _isweapon = TRUE; };
				{ 
				_removeitem = _x select 0;  
				_removeamount = _x select 1; 
					{ 
					if ((_x select 0) == _removeitem) then { 
					_index = 0; 
					while {_index < _removeamount} do { 
					_index = _index + 1; 
					if ((_x select 1) == 1) then { 
					} else { 
					_x set [1,((_x select 1) - 1)]; 
					};
					};};
					} foreach _itemfinish_arr;
				} foreach (_x select 2);
				
		} else {}; 
	} foreach _furnacearr;
	_truefalse = 0;
	if (_isweapon) then {
		{ 
		if ((_x select 0) == _craftitem) then {
		_xselect1 = _x select 1;
		_xselect1 = _xselect1 + _amountyouget;
		_x set [1,_xselect1];
		_truefalse = 1;
		};
		} foreach _itemfinishW_arr;
		if (_truefalse == 0) then { 
		_itemfinishW_arr = [[_craftitem,_amountyouget,_classname,_iteminfo]] + _itemfinishW_arr;
		};
	} else {
		{ 
		if ((_x select 0) == _craftitem) then {
		_xselect1 = _x select 1;
		_xselect1 = _xselect1 + _amountyouget;
		_x set [1,_xselect1];
		_truefalse = 1;
		};
		} foreach _itemfinish_arr;
		if (_truefalse == 0) then { 
		_itemfinish_arr = [[_craftitem,_amountyouget,_classname,_iteminfo]] + _itemfinish_arr;
		};
	};
	lbClear _itemlistbox;
	lbClear _craftlistbox;
	{ 
	_text = format ["%1 (%2)",(_x select 0),(_x select 1)];
	_index = _itemlistbox lbAdd _text;
	} foreach _itemfinish_arr;
	miningsmelter setVariable ["compiledinfo", _itemfinish_arr, true]; 
	miningsmelter setVariable ["compiledWinfo", _itemfinishw_arr, true]; 
	[] call fnc_loadcraftin;
};

fnc_addinfurn = 
{
	inaction = true;
	_smelter = _this select 0;
	miningsmelter = _smelter;
	_inuse = miningsmelter getvariable "inuse";
	if (_inuse == "none") then { 
		_furnace_arr = [
			["A3L_Normal_Rock_S","Rock",0],
			["A3L_Bits_Rock_S_Iron","Iron Ore",0],
			["A3L_Bits_Rock_S_Coal","Coal",0],
			["A3L_Bits_Rock_S_Diamond","Raw Diamond",0],
			["A3L_Crate_Wood","Box of planks",1],
			["A3L_Crate_Iron","Box of Iron Ingots",1],
			["Land_Bricks_V1_F","A pack of Bricks",1],
			["A3L_Crate_Diamond","Box of Diamonds",1]
		];
		miningsmelter setvariable ["inuse",(str player),true];
		sleep (random 5);
		_inuse = miningsmelter getvariable "inuse";
		if (!(str player == _inuse)) exitwith { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg; closedialog 0; };
		_attobj = attachedobjects player;
		_object = "";
		_totalarr = [];
		{
			_typeof = typeof _x;
			_inarray = FALSE;
			_itemtype = "";
			{ _classname = _x select 0; if (_typeof == _classname) then { _inarray = TRUE; }; } foreach _furnace_arr;
			if (_inarray) then {
				detach _x;
				_object = _x;
				_totalarr = [_object] + _totalarr;
			};
		} foreach _attobj;
		
		_amount = count _totalarr;
		if (_amount == 0) then {
			_closearr = [];
			{
			_classname = _x select 0;
			_closearr = [_classname] + _closearr;
			} foreach _furnace_arr;
			_nearestones = nearestObjects [player,_closearr, 5];
			_amount2 = count _nearestones;
		if (_amount2 == 0) exitwith {};	
			_nearestobject = _nearestones select 0;
			_totalarr = [_nearestobject];
		};
		_itemfinish_arr = miningsmelter getvariable "compiledinfo";
		{
			_object = _x;
			_itemclsname = typeof _object;
			_itemname = "";
			_ownable = 0;
			_truefalse = 0;
			{ _Selclsname = _x select 0; if (_Selclsname == _itemclsname) then { _itemname = _x select 1; _ownable = _x select 2; }; } foreach _furnace_arr;
			
			if (_ownable == 0) then {
			deletevehicle _object;
			} else {
			_objectinfo = _object getVariable "data";
			_objectid = _objectinfo select 3;
			[[_objectid],"A3L_StorageRemove",false,false] call BIS_fnc_MP;
			waituntil {!isNull _object};
			};
			sleep 1;
			miningsmelter setvariable ["inuse","none",true];	
			{
				if ((_x select 0) == _itemname) then {
				_xselect1 = _x select 1;
				_xselect1 = _xselect1 + 1;
				_x set [1,_xselect1];
				_truefalse = 1;
				};
			} foreach _itemfinish_arr;
			if (_truefalse == 0) then {
				_itemfinish_arr = [[_itemname,1,_itemclsname,[_ownable]]] + _itemfinish_arr;
			};
		} foreach _totalarr;
		miningsmelter setVariable ["compiledinfo", _itemfinish_arr, true];
	} else { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg;};

};


fnc_addinwb = 
{
	_smelter = _this select 0;
	miningsmelter = _smelter;
	_inuse = miningsmelter getvariable "inuse";
	if (_inuse == "none") then { 
		_furnace_arr = [
		// Resources
			["A3L_Log1","Ficus Log",0],
			["A3L_Log2","Olive Log",0],
			["A3L_Log3","Paper Mulberry Log",0],
		// crafting that can be added in here
			["A3L_Crate_Wood","Box of planks",1],
			["A3L_Crate_Iron","Box of Iron Ingots",1],
			["Land_Bricks_V1_F","A pack of Bricks",1],
			["A3L_Crate_Diamond","Box of Diamonds",1]
		];
		miningsmelter setvariable ["inuse",(str player),true];
		sleep (random 5);
		_inuse = miningsmelter getvariable "inuse";
		if (!(str player == _inuse)) exitwith { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg; closedialog 0; };
		_attobj = attachedobjects player;
		_object = "";
		_totalarr = [];
		{
			_typeof = typeof _x;
			_inarray = FALSE;
			_itemtype = "";
			{ _classname = _x select 0; if (_typeof == _classname) then { _inarray = TRUE; }; } foreach _furnace_arr;
			if (_inarray) then {
				detach _x;
				_object = _x;
				_totalarr = [_object] + _totalarr;
			};
		} foreach _attobj;
		
		_amount = count _totalarr;
		if (_amount == 0) then {
			_closearr = [];
			{
			_classname = _x select 0;
			_closearr = [_classname] + _closearr;
			} foreach _furnace_arr;
			_nearestones = nearestObjects [player,_closearr, 5];
			_amount2 = count _nearestones;
		if (_amount2 == 0) exitwith {};	
			_nearestobject = _nearestones select 0;
			_totalarr = [_nearestobject];
		};
		_itemfinish_arr = miningsmelter getvariable "compiledinfo";
		{
			_object = _x;
			_itemclsname = typeof _object;
			_itemname = "";
			_ownable = 0;
			_truefalse = 0;
			{ _Selclsname = _x select 0; if (_Selclsname == _itemclsname) then { _itemname = _x select 1; _ownable = _x select 2; }; } foreach _furnace_arr;
			
			if (_ownable == 0) then {
			deletevehicle _object;
			} else {
			_objectinfo = _object getVariable "data";
			_objectid = _objectinfo select 3;
			[[_objectid],"A3L_StorageRemove",false,false] call BIS_fnc_MP;
			waituntil {!isNull _object};
			};
			sleep 1;
			miningsmelter setvariable ["inuse","none",true];	
			{
				if ((_x select 0) == _itemname) then {
				_xselect1 = _x select 1;
				_xselect1 = _xselect1 + 1;
				_x set [1,_xselect1];
				_truefalse = 1;
				};
			} foreach _itemfinish_arr;
			if (_truefalse == 0) then {
				_itemfinish_arr = [[_itemname,1,_itemclsname,[_ownable]]] + _itemfinish_arr;
			};
		} foreach _totalarr;
		miningsmelter setVariable ["compiledinfo", _itemfinish_arr, true];
	} else { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg;};

};



fnc_openhelpmnu = {
createdialog "a3l_crafthelp_menu";
_display = findDisplay 5267;
_craftlistbox = _display displayCtrl 1501;
_furnacearr = miningsmelter getvariable "craftinginfo";
_inuse = miningsmelter getvariable "inuse";
if (!(str player == _inuse)) exitwith { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg; closedialog 0; };
{
_text = format ["%1",(_x select 0)];

_index = _craftlistbox lbAdd _text;
} foreach _furnacearr;
_craftlistbox lbSetCurSel 0;
};	

fnc_updatehelpmnu = {
_display = findDisplay 5267;
_craftlistbox = _display displayCtrl 1501;
_infobox = _display displayCtrl 1100;
_nametext = _display displayCtrl 1000;
lbclear _infobox;
_furnacearr = miningsmelter getvariable "craftinginfo";
_selected = lbcursel _craftlistbox;
_array = _furnacearr select _selected;
_itemname = _array select 0;
_nametext ctrlsetText _itemname;
_craftvar = _array select 2;
_text = format ["Crafting information:"];
index = _infobox lbAdd _text;

{
_item = _x select 0;
_amount = _x select 1;
_text = format ["%1x %2",_amount,_item];
index = _infobox lbAdd _text;
} foreach _craftvar;

};

fnc_closecrafting = {
miningsmelter setvariable ["inuse","none",TRUE];
};

fnc_craftdropbox = 
{
	_inuse = miningsmelter getvariable "inuse";
		createdialog "a3l_craft_dropbox";
		_display = findDisplay 5517;
		_totallistbox = _display displayCtrl 1500;
		_insidelistbox = _display displayCtrl 1501;
		
		_itemfinish_arr = [];
		_itemfinish_arr = miningsmelter getvariable "compiledWinfo";
		craftingboxa = call compile (format ["%1",_itemfinish_arr]);
		craftingboxb = [];
		{
			_text = format ["%1 (%2)",(_x select 0),(_x select 1)];
			_index = _totallistbox lbAdd _text;
		} foreach _itemfinish_arr;
		_totallistbox lbSetCurSel 0;
};

fnc_removefrombox = 
{
	_display = findDisplay 5517; 
	_inventorybox = _display displayCtrl 1500; 
	_insidebox = _display displayCtrl 1501; 
	_selected = lbCurSel _inventorybox; 
	_inuse = miningsmelter getvariable "inuse";
	if (!(str player == _inuse)) exitwith { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg; closedialog 0; };
	if (_selected == -1) exitwith {};

	_selectedarr = craftingboxa select _selected;
	
	if ((_selectedarr select 1) == 1) then {
		craftingboxa deleteAt _selected;
		_inventorybox lbSetCurSel -1;
	} else {
		_calculation = ((craftingboxa select _selected) select 1) - 1;
		(craftingboxa select _selected) set [1,_calculation];
	};
	
	_inside = false;
	
	{
	if (_selectedarr select 0 == _x select 0) then {
	_inside = true;
	_xselect1 = _x select 1;
	_xselect1 = _xselect1 + 1;
	_x set [1,_xselect1];
	};
	} foreach craftingboxb;
		
	if (!_inside) then {
	craftingboxb = [[(_selectedarr select 0),1,(_selectedarr select 2),(_selectedarr select 3)]] + craftingboxb;
	};
	
	
	lbClear _inventorybox;
	lbClear _insidebox;
	
	{
		_text = format ["%1 (%2)",(_x select 0),(_x select 1)];
		_index = _inventorybox lbAdd _text;
	} foreach craftingboxa;
	{
		_text = format ["%1 (%2)",(_x select 0),(_x select 1)];
		_index = _insidebox lbAdd _text;
	} foreach craftingboxb;
	_amount = lbsize _inventorybox;
	if (_amount == 0) then {
		_inventorybox lbSetCurSel -1;
	};
	
};
/*
miningsmelter setvariable ["compiledinfo",[["Iron Ore",500,"A3L_Bits_Rock_S_Iron",[0]],["Coal",500,"A3L_Bits_Rock_S_Iron",[0]]],true];
miningsmelter setvariable ["compiledwinfo",[["Ak47 Magazine",6,"A3L_Crate_Iron",[2,"A3L_AK47Mag","magazine"]],["Ak47",5,"A3L_Crate_Iron",[2,"A3L_AK47","rifle"]]],true];
craftingboxa = [];
craftingboxb = [];
*/
fnc_addfrombox = 
{
	_display = findDisplay 5517; 
	_inventorybox = _display displayCtrl 1500; 
	_insidebox = _display displayCtrl 1501; 
	_selected = lbCurSel _insidebox; 
	_inuse = miningsmelter getvariable "inuse";
	if (!(str player == _inuse)) exitwith { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg; closedialog 0; };
	if (_selected == -1) exitwith {};

	_selectedarr = craftingboxb select _selected;
	
	if ((_selectedarr select 1) == 1) then {
		craftingboxb set [_selected,"deletethis"];
		craftingboxb = craftingboxb - ["deletethis"];
		_insidebox lbSetCurSel -1;
	} else {
		_calculation = ((craftingboxb select _selected) select 1) - 1;
		(craftingboxb select _selected) set [1,_calculation];
	};
	
	_inside = false;
	
	{
	if (_selectedarr select 0 == _x select 0) then {
	_inside = true;
	_xselect1 = _x select 1;
	_xselect1 = _xselect1 + 1;
	_x set [1,_xselect1];
	};
	} foreach craftingboxa;
		
	if (!_inside) then {
	craftingboxa = [[(_selectedarr select 0),1,(_selectedarr select 2),(_selectedarr select 3)]] + craftingboxa;
	};
	
	
	lbClear _inventorybox;
	lbClear _insidebox;
	
	{
		_text = format ["%1 (%2)",(_x select 0),(_x select 1)];
		_index = _inventorybox lbAdd _text;
	} foreach craftingboxa;
	{
		_text = format ["%1 (%2)",(_x select 0),(_x select 1)];
		_index = _insidebox lbAdd _text;
	} foreach craftingboxb;
	_amount = lbsize _insidebox;
	if (_amount == 0) then {
		_insidebox lbSetCurSel -1;
	};
	
};
// [["Ak47",2,"A3L_Crate_Iron",[2,"A3L_AK47","weapon"]]
fnc_dropwcrate = 
{
	_display = findDisplay 5517; 
	_inventorybox = _display displayCtrl 1500; 
	_insidebox = _display displayCtrl 1501; 
	_selected = lbCurSel _insidebox; 
	_inuse = miningsmelter getvariable "inuse";
	if (!(str player == _inuse)) exitwith { ["There is already someone using it!",20,"red"] call A3L_Fnc_Msg; closedialog 0; };
	_amount = lbsize _insidebox;
	if (_amount == 0) exitwith {};
	_weaponarray = [];
	{
		_amount = _x select 1;
		_boxinfo = _x select 3;
		_classname = _boxinfo select 1;
		_type = _boxinfo select 2;
		_weaponarray = [[_classname,_amount,_type]] + _weaponarray;
	} foreach craftingboxb;
	hint format ["%1",_weaponarray];
	[[player,"A3L_Ammo_Crate",_weaponarray],"A3L_StorageBuyItem",false,false] call BIS_fnc_MP;

	_finalarray = call compile (format ["%1",craftingboxa]);
	miningsmelter setvariable ["compiledWinfo",_finalarray,true];
	craftingboxa = [];
	craftingboxb = [];
	closedialog 0;
};
	
	
	
