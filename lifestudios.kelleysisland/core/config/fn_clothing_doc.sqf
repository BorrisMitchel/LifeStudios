#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for doc clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"DoC Clothing Shop];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
	
		_ret set[count _ret,["A3L_EC_COFC",nil,1100]];
		_ret set[count _ret,["A3L_EC_CCPL",nil,1100]];
		_ret set[count _ret,["A3L_EC_CSGT",nil,1100]];
        _ret set[count _ret,["A3L_EC_CLT",nil,1100]];
		_ret set[count _ret,["A3L_EC_CCPT",nil,1100]];

		_ret set[count _ret,["U_B_HeliPilotCoveralls","Pilot Uniform",750]];
		
	};
	
	//Hats
	case 1:
	{
	
		_ret set[count _ret,["Campaign_Hat_Sheriff","Patrol Cap",50]];
		_ret set[count _ret,["H_PilotHelmetHeli_B","Pilot Helmet",50]];
		_ret set[count _ret,["rangehat","Range Hat",3500]];
		_ret set[count _ret,["TRYK_R_CAP_BLK","Reverse Cap (Black)",300]];
		_ret set[count _ret,["TRYK_R_CAP_OD_US","Reverse Cap",300]];
		_ret set[count _ret,["TRYK_R_CAP_TAN","Reverse Cap (Tan)",300]];
		_ret set[count _ret,["TRYK_H_woolhat","Woolcap",300]];
		_ret set[count _ret,["TRYK_H_woolhat_br","Brown Woolcap",300]];
		_ret set[count _ret,["TRYK_H_woolhat_cu","CU Woolcap",300]];
		_ret set[count _ret,["TRYK_H_woolhat_tan","Tan Woolcap",300]];
		_ret set[count _ret,["TRYK_H_woolhat_WH","White Woolcap",300]];
		
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
		
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving",nil,50],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_lowprofile",nil,55],
			["TRYK_SpsetG_Glasses",nil,40],
			["TRYK_SPGEAR_Glasses",nil,40],
			["TRYK_Spset_PHC1_Glasses",nil,40],
			["TRYK_Spset_PHC2_Glasses",nil,40]
			
		];
	};
	
	case 3:
	{
		
		_ret set[count _ret,["A3L_EC_PATROL_VEST",nil,1125]];
		_ret set[count _ret,["A3L_Docvest","DoC Vest",1125]];
        _ret set[count _ret,["DOJ_VEST_BLACK",nil,1125]];		

	};
	
	case 4:
	{
		_ret =
		[
		
			["AM_PoliceBelt",nil,1800],
			["TRYK_B_Belt",nil,3000],
			["TRYK_B_Belt_BLK",nil,3000],
			["TRYK_B_Belt_CYT",nil,3000],
			["TRYK_B_Belt_tan",nil,3000],
			["TRYK_B_Belt_br",nil,3000],
			["TRYK_B_Belt_GR",nil,3000],
			["TRYK_B_Belt_AOR1",nil,3000],
			["TRYK_B_Belt_AOR2",nil,3000]
			
		];
	};
};

_ret;
