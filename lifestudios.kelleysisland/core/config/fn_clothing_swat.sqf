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
ctrlSetText[3103,"SWAT's Clothing Store"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["A3L_EC_SERT",nil,1063],
			["A3L_EC_SERTK",nil,1063],
			["TRYK_U_B_PCUGs_SERT",nil,1063],
			["B_PCU_G_SERT",nil,1063],
			["A3L_EC_SERTM",nil,1063]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_PASGT_BLK","SWAT PASGT (Black)",300],
			["A3L_CIDBeretBLACK",nil,300],
			["TRYK_H_PASGT_OD","SWAG PAGST (Black)",300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
            ["G_Bandanna_aviator",nil,100],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["Mask_M40",nil,100],
			["Mask_M40_OD",nil,100],
			["G_Combat",nil,55],
			["TRYK_kio_balaclava_ESS",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["SERT_RIDEALONG",nil,1125],
			["SERT_FULL_VEST",nil,1125],
			["A3L_EC_SERT_SPOPS_NP",nil,1125],
			["A3L_EC_SERT_SPOPS_VEST",nil,1125],
			["TRYK_V_SERT_BA_TBL3_OD",nil,1125],
			["TRYK_V_SERT_BK",nil,1125]
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
