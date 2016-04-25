/*---------------------------------------------------------------------------
			Seize Items & Tooltip - Author: Oscar Rogain for LifeStudios

						 ██████╗ ███████╗██████╗  ██████╗ 
						██╔═══██╗██╔════╝██╔══██╗██╔═══██╗
						██║   ██║███████╗██████╔╝██║   ██║
						██║   ██║╚════██║██╔══██╗██║   ██║
						╚██████╔╝███████║██║  ██║╚██████╔╝
						 ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝ 
						 "Critical Gaming, Can blow me"
---------------------------------------------------------------------------*/

//Functions
_getItemContents = {
	private ["_obj", "_finalResultArray", "_weps", "_mags", "_items", "_backpacks", "_nameArray", "_countArray"];
	//Get item from input
	_obj = _this;

	//Initial vars
	_finalResultArray = [];
	_weps = [];
	_mags = [];
	_items = [];
	_backpacks = [];
	_nameArray = [];
	_countArray = [];

	//Get weapon contents
	_weps = getWeaponCargo _obj;

    //Get magazine contents
	_mags = getMagazineCargo _obj;

    //Get item contents
	_items = getItemCargo _obj;

    //Get backpack contents
	_backpacks = getBackpackCargo _obj;

	//Squish names into one array
	_nameArray = (_weps select 0) + (_mags select 0) + (_items select 0) + (_backpacks select 0);
	//Squish counts into one array
	_countArray = (_weps select 1) + (_mags select 1) + (_items select 1) + (_backpacks select 1);

	_finalResultArray = [_nameArray,_countArray];

	//Exit function with result
	_finalResultArray
};

_getDispName = {
	private ["_className", "_displayName", "_result", "_isWep", "_isMag", "_isVeh"];
	_className = _this;
	_displayName = _this;
	_result = false;

	_isWep = isClass (configFile >> "CfgWeapons" >> _className);
	_isMag = isClass (configFile >> "CfgMagazines" >> _className);
	_isVeh = isClass (configFile >> "CfgVehicles" >> _className);

	if (_isWep) then {
		_result = isText (configFile >> "cfgWeapons" >> _className >> "displayname");
		if (_result) then {
			_displayName = getText (configFile >> "cfgWeapons" >> _className >> "displayname");
		};
	};

	if (_isMag) then {
		_result = isText (configFile >> "cfgMagazines" >> _className >> "displayname");
		if (_result) then {
			_displayName = getText (configFile >> "cfgMagazines" >> _className >> "displayname");
		};	
	};

	if (_isVeh) then {
		_result = isText (configFile >> "cfgVehicles" >> _className >> "displayname");
		if (_result) then {
			_displayName = getText (configFile >> "cfgVehicles" >> _className >> "displayname");
		};
	};

	_displayName
};

//Initial Variables
private ["_getItemContents", "_getDispName", "_resultArray", "_seizedItemArray", "_allSeizedItemsNameArray", "_allSeizedItemsCountArray", "_nm", "_clear", "_getItemContents", "_hintString", "_getDispName"];

_resultArray = [];
_seizedItemArray = [];
_allSeizedItemsNameArray = [];
_allSeizedItemsCountArray = [];
_nm = "";
//Instructions

//Get all nearby weapon holders within 3 meters
_clear = nearestObjects [player,["weaponholder"],3];
_clear = _clear + nearestObjects [player,["groundWeaponHolder"],3];

//For all nearby weapon holders
for "_i" from 0 to count _clear - 1 do
{
    //Get contents of item
    //Going to pass this off to a little function to make things neater
    //Got to give the function the item so it knows what to look at
    _resultArray = (_clear select _i) call _getItemContents;

  	{
  		_allSeizedItemsNameArray = _allSeizedItemsNameArray + [_x];
  	} forEach (_resultArray select 0);

  	{
  		_allSeizedItemsCountArray = _allSeizedItemsCountArray + [_x];
  	} forEach (_resultArray select 1);

    //Delete the item
    deleteVehicle (_clear select _i);
    //Chill for a sec
    sleep 0.056;
};


//Build a string from the seized items array to hint to the user
_hintString = "Seized Following Items Into Evidence: ";

_seizedItemArray = [_allSeizedItemsNameArray, _allSeizedItemsCountArray];
diag_log("_seizedItemArray: " + str _seizedItemArray);

{
	_nm = _x;
	_nm = _x call _getDispName;
	_hintString = _hintString + _nm + " x " + str((_seizedItemArray select 1) select _forEachIndex) + ", ";
} forEach (_seizedItemArray select 0);

//send the hint
hintSilent _hintString;
