miningstone_array = [
["A3L_Normal_Rock_L","A3L_Normal_Rock_S",20,30],
["A3L_Bits_Rock_L_Iron","A3L_Bits_Rock_S_Iron",30,40],
["A3L_Bits_Rock_L_Coal","A3L_Bits_Rock_S_Coal",40,50],
["A3L_Bits_Rock_L_Diamond","A3L_Bits_Rock_S_Diamond",50,60]
];

svr_startjailmsvr = 
	{
		_numberOfRocks = 10;
		_index = 0;
		while {_index < _numberOfRocks} do
		{
		_srandom = round (random 10);
		_rock = "";
		_strenghtmin = 0;
		_strenghtmax = 0;
		if (_srandom < 3) then { _rock = (miningstone_array select 0) select 0; _strenghtmin = (miningstone_array select 0) select 2; _strenghtmax = (miningstone_array select 0) select 3; } else {
		if (_srandom < 6) then { _rock = (miningstone_array select 1) select 0; _strenghtmin = (miningstone_array select 1) select 2; _strenghtmax = (miningstone_array select 1) select 3; } else {
		if (_srandom < 10) then { _rock = (miningstone_array select 2) select 0; _strenghtmin = (miningstone_array select 2) select 2; _strenghtmax = (miningstone_array select 2) select 3; } else {
		if (_srandom == 10) then { _rock = (miningstone_array select 3) select 0; _strenghtmin = (miningstone_array select 3) select 2; _strenghtmax = (miningstone_array select 3) select 3; } else { hint format ["Spawn random line 23 is fapped reason; %1",_srandom];
		};};};};
		_source = [9646.97,10063.2,0.00143909];
		_strenghtgem = _strenghtmax - _strenghtmin;
		_strenghtgem = round (random _strenghtgem);
		_totstrenght = _strenghtgem + _strenghtmin;
		_dir = random 0;
		_dist = random 0;
		_pos = [((_source select 0) + (cos _dir) * _dist), ((_source select 1) + (sin _dir) * _dist), 0];
		_rock = _rock createVehicle _pos;
		_rock addEventHandler ["handleDamage", {_this spawn svr_handlejailRock}];
		_rock setVariable ["health", _totstrenght, false];
		_rock setVariable ["type", "mining", false];
		_rock setDir (random 360);
		_index = _index + 1;
		};
	};

svr_handlejailRock = 
	{
		_object = _this select 0;
		_player = _this select 3;
		_weapon = currentweapon _player;
		_classname = typeof _object;
		_health = _object getVariable "health";
		_type = _object getVariable "type";
		_health = _health - 1;
		_nearsound = nearestObjects [_object, ["man"], 10];
		_loc = getpos _object;
		
		if (_weapon == "a3l_pickaxe" && _type == "mining" OR _weapon == "a3l_pickaxe" && _type == "woodcutting") then {
		if (_health == 0) then  {
		_pos = getPos _object;
		deleteVehicle _object;
		{
		[[_type,"crit",_loc],"fnc_playhitsnd",_x,false] spawn bis_fnc_MP;
		} foreach _nearsound;
		if (_type == "mining") then {
		[_pos,_classname] spawn svr_dropJstone;
		} else {
		if (_type == "woodcutting") then {
		[_pos,_classname] spawn svr_dropwood;
		};};
		} else {
		{
		[[_type,"hit",_loc],"fnc_playhitsnd",_x,false] spawn bis_fnc_MP;
		} foreach _nearsound;
		_object setVariable ["health", _health, false];
		};
		} else { };
	};
	
svr_dropJstone =
	{
		_pos = _this select 0;
		_classname = _this select 1;
		_selstone = "";
		{
		_selected = _x select 0;
		if (_selected == _classname) then {_selstone = _x select 1;};
		} foreach miningstone_array;
		
		_numberOfRocks = round (random 3) + 1;
		_index = 0;
		while {_index < _numberOfRocks} do {
		_groundobject = createVehicle [_selstone, _pos, [], 0, "NONE"]; 
		_groundobject setVariable ["jailrock", TRUE, true];
		_index = _index + 1;
		}; 
		[] spawn svr_respawnjailkmin;
	};	
	
svr_respawnjailkmin = 
	{
		_rdom = (random 20) + 50;
		sleep _rdom;
		_srandom = round (random 10);
		_rock = "";
		_strenghtmin = 0;
		_strenghtmax = 0;
		if (_srandom < 3) then { _rock = (miningstone_array select 0) select 0; _strenghtmin = (miningstone_array select 0) select 2; _strenghtmax = (miningstone_array select 0) select 3; } else {
		if (_srandom < 6) then { _rock = (miningstone_array select 1) select 0; _strenghtmin = (miningstone_array select 1) select 2; _strenghtmax = (miningstone_array select 1) select 3; } else {
		if (_srandom < 10) then { _rock = (miningstone_array select 2) select 0; _strenghtmin = (miningstone_array select 2) select 2; _strenghtmax = (miningstone_array select 2) select 3; } else {
		if (_srandom == 10) then { _rock = (miningstone_array select 3) select 0; _strenghtmin = (miningstone_array select 3) select 2; _strenghtmax = (miningstone_array select 3) select 3; } else {};};};};
		_source = [9646.97,10063.2,0.00143909];
		_strenghtgem = _strenghtmax - _strenghtmin;
		_strenghtgem = round (random _strenghtgem);
		_totstrenght = _strenghtgem + _strenghtmin;
		_dir = random 0;
		_dist = random 0;
		_pos = [((_source select 0) + (cos _dir) * _dist), ((_source select 1) + (sin _dir) * _dist), 0];
		_rock = _rock createVehicle _pos;
		_rock addEventHandler ["handleDamage", {_this spawn svr_handlejailRock}];
		_rock setVariable ["health", _totstrenght, false];
		_rock setVariable ["type", "mining", false];
		_rock setDir (random 360);
	};	
	
[] call svr_startjailmsvr;
