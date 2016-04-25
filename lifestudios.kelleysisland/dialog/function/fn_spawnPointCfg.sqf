/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["uc_cop_spawn","Union SO","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["fc_cop_spawn","Falls Church SO","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["hcf_cop_spawn","Correctional","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"]
		];
	};
	
	case civilian:
	{
		_return = [
			["uc_civ_spawn","Union City","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["fc_civ_spawn","Falls Church","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["VDV_civ_spawn","Van der Ville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["uc_med_spawn","Erie County Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
