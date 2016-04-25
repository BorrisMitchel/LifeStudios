/*
	File: fn_clothing_swat.sqf
	Author: Bryan "Tonic" Boardwine - Made the template
	
	Description:
        " This file is for SWAT Clothing Shop " 
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"HRT's Clothing Store"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["A3LJumperCIDGreen",nil,1063]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_PASGT_OD","HRT PASGT (OD)",300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["Mask_M40_OD",nil,100],
			["G_Bandanna_oli",nil,55],
			["TRYK_kio_balaclava_ESS",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			
			["TRYK_V_PlateCarrier_POLICE",nil,1125]

		];
	};
	
	//Backpacks
	case 4:
	{
		[

			["AM_PoliceBelt",nil,1800]

		];
	};
};
