/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
		license_civ_heroin = false;
		license_civ_marijuana = false;
		license_civ_coke = false;
	};
	
	//Jail licenses
	case 1:
	{
		//New revoking method
		//license_civ_fcl = false;
		//license_civ_fsl = false;
	};
	
	// KILLING DOES NOT MAKE YOU LOSE YOUR LICENSES.
	//Remove motor vehicle licenses
	case 2:
	{
		if(license_civ_driver OR license_civ_air OR license_civ_truck OR license_civ_boat) then {
			//license_civ_driver = false;
			//license_civ_air = false;
			//license_civ_truck = false;
			//license_civ_boat = false;
			//hint localize "STR_Civ_LicenseRemove_1";
			_hannes = 0;
		};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		if(license_civ_fcl) then {
			//license_civ_fcl = false;
			//license_civ_fsl = false;
			//hint localize "STR_Civ_LicenseRemove_2";
			_hannes = 0;
		};
	};
};