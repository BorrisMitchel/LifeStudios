	closeDialog 0;
	_ptarget = cursorTarget;
	if(side player != west)exitWith{systemChat "You are not a cop!"};
	if(!createDialog "A3L_GunRack")exitWith{systemChat "Couldnt create dialog"};
	if(isNil "_ptarget")exitWith{closeDialog 0;};
	A3L_MyGear = weapons player + magazines player + [vest player];
	_carGear = _ptarget getVariable "A3L_GunRack";
	A3L_MyGear = A3L_MyGear - [""];
	{
		_isAWeaponClassOrIsAMagazineClass = ["CfgWeapons",_x] call life_fnc_IsClass;
		if(_isAWeaponClassOrIsAMagazineClass)then{
			lbAdd[1500,format["%1",getText(configFile >> "cfgWeapons" >> _x >> "displayName")]];
		}elsE{
			lbAdd[1500,format["%1",getText(configFile >> "cfgMagazines" >> _x >> "displayName")]];
		};
	}forEach A3L_MyGear;
	_allcaritems = (_carGear select 0)+(_carGear select 1);
	{
		_isGun = ["CfgWeapons",_x] call life_fnc_IsClass;
		if(_isGun)then{
			lbAdd[1501,format["%1",getText(configFile >> "cfgWeapons" >> _x >> "displayName")]];
		}else{
			lbAdd[1501,format["%1",getText(configFile >> "cfgMagazines" >> _x >> "displayName")]];
		};
	}forEach _allcaritems;