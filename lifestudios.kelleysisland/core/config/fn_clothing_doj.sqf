/*
	File: fn_clothing_doj.sqf
	Author: Bryan "Tonic" Boardwine - Made the template
	
	Description:
        " This file is for DOJ/SIU Clothing Shop " 
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price
// New Shop for DOJ
//Shop Title Name
ctrlSetText[3103,"Department of Justice Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["DAI_Polo",nil,1000],
			["TRYK_U_B_BLKBLK_DAUniform",nil,1000],
			["KAEL_SUITS_BR_F19c",nil,1000],
			["KAEL_SUITS_BR_F32",nil,1000],
			["TRYK_U_denim_hood_blk",nil,1000],
			["TRYK_U_B_PCUs",nil,1000],
			["TRYK_T_camo_Wood_BG",nil,1000]
		];
	}; 

	//Hats
	case 1:
	{
		[
			["TRYK_H_DA",nil,100]
		];
	};

	//Glasses
	case 2:
	{
		[
			["TRYK_G_Shades_Black_NV",nil,1000],
			["G_Bandanna_beast",nil,1000]
		];
	};

	//Vests
	case 3:
	{
		[
			["TRYK_V_Sheriff_DA1",nil,1000],
			["TRYK_V_Sheriff_DA2",nil,1000],
			["TRYK_V_ArmorVest_DA1",nil,1000],
			["TRYK_V_ArmorVest_DA2",nil,1000],
			["A3L_deptjvest1",nil,1000],
			["TRYK_V_IOTV_BLK",nil,1000]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["AM_PoliceBelt",nil,1000],
			["TRYK_B_Belt_BLK",nil,1000],
			["TRYK_B_Belt_CYT",nil,1000],
			["TRYK_B_Belt_BLK",nil,1000],
			["TRYK_B_BAF_BAG_BLK",nil,1000],
			["TRYK_B_BAF_BAG_CYT",nil,1000]
		];
	};
};
