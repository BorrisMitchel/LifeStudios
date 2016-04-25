	_ptarget = cursorTarget;
	_sel = [_this,0,0,[0]] call BIS_fnc_Param;
	_allitems = ((_ptarget getVariable "A3L_GunRack") select 0) + ((_ptarget getVariable "A3L_GunRack") select 1);

	_weps = ((_ptarget getVariable "A3L_GunRack") select 0);
	_mags = ((_ptarget getVariable "A3L_GunRack") select 1);

	_item = _allitems select _sel;
	_isgun = ["CfgWeapons",_item] call life_fnc_IsClass;
	if(_isGun)then{
		_weps = _weps - [_item];
		player addWeapon _item;
		_allitems = [_weps,_mags];
		_ptarget setVariable ["A3L_GunRack",_allitems,true];
	}else{
		{
			player addMagazine _item;
		}forEach _mags;
		_mags = _mags - [_item];
		_allitems = [_weps,_mags];
		_ptarget setVariable ["A3L_GunRack",_allitems,true];
	};
	closeDialog 0;
	[] call life_fnc_GunRack;