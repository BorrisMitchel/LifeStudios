miningstone_array = [
["A3L_Normal_Rock_L","A3L_Normal_Rock_S",70,120],
["A3L_Bits_Rock_L_Coal","A3L_Bits_Rock_S_Coal",120,170],
["A3L_Bits_Rock_L_Iron","A3L_Bits_Rock_S_Iron",180,300],
["A3L_Bits_Rock_L_Diamond","A3L_Bits_Rock_S_Diamond",160,220]
];

woodclogs_array = [
["Paper_Mulberry","A3L_Log3",60,100],
["Olive_1","A3L_Log2",60,100],
["Ficus_1","A3L_Log1",60,100]
];

svr_startminingsvr = 
	{
		_minelocs = [
		["mine1",10,20],
		["mine2",15,60],
		["mine3",20,40]
		];
		{
		_mine = _x select 0;
		_distance = _x select 2;
		_numberOfRocks = _x select 1;
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
			_source = getMarkerPos _mine;
			_strenghtgem = _strenghtmax - _strenghtmin;
			_strenghtgem = round (random _strenghtgem);
			_totstrenght = _strenghtgem + _strenghtmin;
			_dir = random _distance;
			_dist = random _distance;
			_pos = [((_source select 0) + (cos _dir) * _dist), ((_source select 1) + (sin _dir) * _dist), 0];
			_rock = _rock createVehicle _pos;
			sleep 10;
			_rock addEventHandler ["handleDamage", {_this spawn svr_handleStartRock}];
			_rock setVariable ["health", _totstrenght, false];
			_rock setVariable ["type", "mining", false];
			_rock setDir (random 360);
			_index = _index + 1;
			};
		} foreach _minelocs;
	};
	
svr_startwcsvr = 
	{
		_wclocs = [
			["woodcutting_1",13,50],
			["woodcutting_2",10,40],
			["woodcutting_3",12,50]
		];
		{
		_wctting  = _x select 0;
		_distance = _x select 2;
		_numberOfTrees = _x select 1;
		_index = 0;
		while {_index < _numberOfTrees} do
		{
		_srandom = round (random 10);
		_tree = "";
		_strenghtmin = 0;
		_strenghtmax = 0;
		if (_srandom < 4) then { _tree = (woodclogs_array select 0) select 0; _strenghtmin = (woodclogs_array select 0) select 2; _strenghtmax = (woodclogs_array select 0) select 3; } else {
		if (_srandom < 7) then { _tree = (woodclogs_array select 1) select 0; _strenghtmin = (woodclogs_array select 1) select 2; _strenghtmax = (woodclogs_array select 1) select 3; } else {
		if (_srandom < 10) then { _tree = (woodclogs_array select 2) select 0; _strenghtmin = (woodclogs_array select 2) select 2; _strenghtmax = (woodclogs_array select 2) select 3; } else {
		if (_srandom == 10) then { _tree = (woodclogs_array select 3) select 0; _strenghtmin = (woodclogs_array select 3) select 2; _strenghtmax = (woodclogs_array select 3) select 3; } else { hint format ["Spawn random line 23 is fapped reason; %1",_srandom];
		};};};};
		_source = getMarkerPos _wctting;
		_strenghtgem = _strenghtmax - _strenghtmin;
		_strenghtgem = round (random _strenghtgem);
		_totstrenght = _strenghtgem + _strenghtmin;
		_dir = random _distance;
		_dist = random _distance;
		_pos = [((_source select 0) + (cos _dir) * _dist), ((_source select 1) + (sin _dir) * _dist), 0];
		_tree = _tree createVehicle _pos;
		sleep 10;
		_tree addEventHandler ["handleDamage", {_this spawn svr_handleStartRock;}];
		_tree setVariable ["health", _totstrenght, false];
		_tree setVariable ["type", "woodcutting", false];
		_tree setDir (random 360);
		_index = _index + 1;
		};
		} foreach _wclocs;
	};

svr_handleStartRock = 
	{
		_object = _this select 0;
		_player = _this select 3;
		_weapon = currentweapon _player;
		_classname = typeof _object;
		_health = _object getVariable "health";
		_type = _object getVariable "type";
		
		
		if (_weapon == "a3l_pickaxe" && _type == "mining" OR _weapon == "MeleeHatchet" && _type == "woodcutting") then {
		[[_object,_player,_classname,_health,_type],"fnc_clienthandlerock",_player,false] spawn life_fnc_MP;
		};
	};
	
svr_ContinuehandleRock = {
_object = _this select 0;
_player = _this select 1;
_classname = _this select 2;
_health = _this select 3;
_type = _this select 4;
_hit = _this select 5;

		_health = _health - _hit;

		_loc = getpos _object;
		
		
		if (_health <= 0) then  {
		_pos = getPos _object;
		deleteVehicle _object;

		
		if (_type == "mining") then {
		[_pos,_classname] spawn svr_dropstone;
		} else {
		if (_type == "woodcutting") then {
		[_pos,_classname] spawn svr_dropwood;
		};};
		} else {
		_object setVariable ["health", _health, false];
		};
};

svr_dropstone =
	{
		_pos = _this select 0;
		_classname = _this select 1;
		_selstone = "";
		{
		_selected = _x select 0;
		if (_selected == _classname) then {_selstone = _x select 1;};
		} foreach miningstone_array;
		
		_numberOfRocks = round (random 2) + 1;
		_index = 0;
		_groundarr = [];
		while {_index < _numberOfRocks} do {
		_groundobject = createVehicle [_selstone, _pos, [], 0, "NONE"]; 
		_groundobject setVariable ["pickup", TRUE, true];
		_groundobject setvariable ["jailrock",false,true];
		_index = _index + 1;
		_groundarr = _groundarr + [_groundobject];
		}; 
		[_pos] spawn svr_respawnmining;
		sleep 120;
		{
		if (!Isnull _x) then {
		deletevehicle _x;
		};
		} foreach _groundarr;
	};	
	
	svr_dropwood =
	{
		_pos = _this select 0;
		_classname = _this select 1;
		_selwood = "";
		{
		_selected = _x select 0;
		if (_selected == _classname) then {_selwood = _x select 1;};
		} foreach woodclogs_array;
		
		_numberOfWood = round (random 4) + 1;
		_index = 0;
		_groundarr = [];
		while {_index < _numberOfWood} do {
		_groundobject = createVehicle [_selwood, _pos, [], 0, "NONE"]; 
		_groundobject setVariable ["pickup", TRUE, true];
		_index = _index + 1;
		_groundarr = _groundarr + [_groundobject];
		_groundobject setvariable ["jailrock",false,true];
			}; 
		[_pos] spawn svr_respawnwc;
		sleep 120;
		{
		if (!Isnull _x) then {
		deletevehicle _x;
		};
		} foreach _groundarr;
	};	
	
svr_respawnwc = 
	{
		_rdom = (random 300) + 500;
		sleep _rdom;
		_srandom = round (random 10);
		_tree = "";
		_strenghtmin = 0;
		_strenghtmax = 0;
		if (_srandom < 3) then { _tree = (woodclogs_array select 0) select 0; _strenghtmin = (woodclogs_array select 0) select 2; _strenghtmax = (woodclogs_array select 0) select 3; } else {
		if (_srandom < 6) then { _tree = (woodclogs_array select 1) select 0; _strenghtmin = (woodclogs_array select 1) select 2; _strenghtmax = (woodclogs_array select 1) select 3; } else {
		if (_srandom < 10) then { _tree = (woodclogs_array select 2) select 0; _strenghtmin = (woodclogs_array select 2) select 2; _strenghtmax = (woodclogs_array select 2) select 3; } else {
		if (_srandom == 10) then { _tree = (woodclogs_array select 3) select 0; _strenghtmin = (woodclogs_array select 3) select 2; _strenghtmax = (woodclogs_array select 3) select 3; } else { };};};};
		_source = _this select 0;
		_strenghtgem = _strenghtmax - _strenghtmin;
		_strenghtgem = round (random _strenghtgem);
		_totstrenght = _strenghtgem + _strenghtmin;
		_dir = random 20;
		_dist = random 20;
		_pos = [((_source select 0) + (cos _dir) * _dist), ((_source select 1) + (sin _dir) * _dist), 0];
		_tree = _tree createVehicle _pos;
		_tree addEventHandler ["handleDamage", {_this spawn svr_handleRock}];
		_tree setVariable ["health", _totstrenght, false];
		_tree setVariable ["type", "woodcutting", false];
		_tree setDir (random 360);
	};	
	
svr_respawnmining = 
	{
		_rdom = (random 1) + 1;
		sleep _rdom;
		_srandom = round (random 10);
		_rock = "";
		_strenghtmin = 0;
		_strenghtmax = 0;
		if (_srandom < 3) then { _rock = (miningstone_array select 0) select 0; _strenghtmin = (miningstone_array select 0) select 2; _strenghtmax = (miningstone_array select 0) select 3; } else {
		if (_srandom < 6) then { _rock = (miningstone_array select 1) select 0; _strenghtmin = (miningstone_array select 1) select 2; _strenghtmax = (miningstone_array select 1) select 3; } else {
		if (_srandom < 10) then { _rock = (miningstone_array select 2) select 0; _strenghtmin = (miningstone_array select 2) select 2; _strenghtmax = (miningstone_array select 2) select 3; } else {
		if (_srandom == 10) then { _rock = (miningstone_array select 3) select 0; _strenghtmin = (miningstone_array select 3) select 2; _strenghtmax = (miningstone_array select 3) select 3; } else {};};};};
		_source = _this select 0;
		_strenghtgem = _strenghtmax - _strenghtmin;
		_strenghtgem = round (random _strenghtgem);
		_totstrenght = _strenghtgem + _strenghtmin;
		_dir = random 20;
		_dist = random 20;
		_pos = [((_source select 0) + (cos _dir) * _dist), ((_source select 1) + (sin _dir) * _dist), 0];
		_rock = _rock createVehicle _pos;
		_rock addEventHandler ["handleDamage", {_this spawn svr_handleRock}];
		_rock setVariable ["health", _totstrenght, false];
		_rock setVariable ["type", "mining", false];
		_rock setDir (random 360);
	};	
	sleep 20;
[] call svr_startminingsvr;
[] call svr_startwcsvr;
