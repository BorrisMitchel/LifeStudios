	_ptarget = cursorTarget;
	_sel = [_this,0,0,[0]] call BIS_fnc_Param;
	systemChat "Storing weapon..";
	_VRACK = _ptarget getVariable "A3L_GunRack";
	_item = A3L_MyGear select _sel; 
	_isWeapon = ["CfgWeapons",_item] call life_fnc_IsClass;
	if(_isWeapon)then{
		_insert_cell = _VRACK select 0;
		_insert_cell set [count _insert_cell, _item];
		player removeWeapon _item;
		_putBack = [_insert_cell, (_VRACK select 1)];
		_ptarget setVariable ["A3L_GunRack",_putBack,true];
	}else{
		_insert_cell = _VRACK select 1;
		_insert_cell set[count _insert_cell, _item];
		player removemagazine _item;
		_putBack = [(_VRACK select 0), _insert_cell];
		_ptarget setVariable ["A3L_GunRack",_putBack,true];
	};
	closeDialog 0;
	[] call life_fnc_GunRack;