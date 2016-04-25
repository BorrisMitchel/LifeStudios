#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Eerie Country Deputy Shop"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret set[count _ret,["A3L_EC_COFC",nil,1100]];
		_ret set[count _ret,["A3L_EC_CCPL",nil,1100]];
		_ret set[count _ret,["A3L_EC_CSGT",nil,1100]];
        _ret set[count _ret,["A3L_EC_CLT",nil,1100]];
		_ret set[count _ret,["A3L_EC_CCPT",nil,1100]];

		_ret set[count _ret,["A3L_EC_SOCDT",nil,1100]];
		_ret set[count _ret,["A3L_EC_SOOFC",nil,1100]];
		_ret set[count _ret,["A3L_EC_SOCPL",nil,1100]];
		_ret set[count _ret,["A3L_EC_SOSGT",nil,1100]];
        _ret set[count _ret,["A3L_EC_SOLT",nil,1100]];
		_ret set[count _ret,["A3L_EC_SOCPT",nil,1100]];
		_ret set[count _ret,["A3L_EC_SOMAJ",nil,1100]];
		
		_ret set[count _ret,["A3L_EC_HPOFC",nil,1100]];
		_ret set[count _ret,["A3L_EC_HPCPL",nil,1100]];
		_ret set[count _ret,["A3L_EC_HPSGT",nil,1100]];
		_ret set[count _ret,["A3L_EC_HPLT",nil,1100]];
		_ret set[count _ret,["A3L_EC_HPCPT",nil,1100]];
		_ret set[count _ret,["A3L_EC_HPMAJ",nil,1100]];
		
		_ret set[count _ret,["A3L_EC_SODS",nil,1100]];
		_ret set[count _ret,["A3L_EC_SOSHERIFF",nil,1100]];
		
        _ret set[count _ret,["DAI_Polo",nil,1100]];
		_ret set[count _ret,["A3L_EC_SERT_Officer_M",nil,1100]];
		_ret set[count _ret,["U_B_Wetsuit",nil,500]];
		_ret set[count _ret,["U_O_Wetsuit",nil,500]];
        _ret set[count _ret,["U_I_Wetsuit",nil,500]];
		_ret set[count _ret,["U_B_HeliPilotCoveralls","Pilot Uniform",750]];
	};
	
	case 1:
	{
		_ret set[count _ret,["Campaign_Hat_Sheriff","Patrol Cap",50]];
		_ret set[count _ret,["Campaign_Hat_Washedout","Highway Patrol Cap",50]];
		_ret set[count _ret,["H_PilotHelmetHeli_B","Pilot Helmet",50]];
		_ret set[count _ret,["TRYK_H_DELTAHELM_NV","DAI Raid Helmet (Black)",50]];
		_ret set[count _ret,["TRYK_H_PASGT_OD","SERT HELM",50]];
		_ret set[count _ret,["AM_PatrolHat","Sheriffs Hat",50]];
	};
	
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
			["TRYK_Spset_PHC2_Glasses",nil,40],
			["Mask_M40",nil,100],
			["A3L_Balaclava",nil,60]
			
		];
	};
	
	case 3:
	{
		
		_ret set[count _ret,["A3L_RideAlongVest","Ride Along Vest",1125]];
		_ret set[count _ret,["A3L_EC_PATROL_VEST",nil,1125]];
		_ret set[count _ret,["A3L_EC_HWP_VEST",nil,1125]];
		_ret set[count _ret,["A3L_Docvest","DoC Vest",1125]];
        _ret set[count _ret,["DOJ_VEST_BLACK",nil,1125]];
		_ret set[count _ret,["V_RebreatherIR",nil,9500]];
		_ret set[count _ret,["V_RebreatherIR",nil,9500]];
		_ret set[count _ret,["A3L_bounty",nil,1125]];
		_ret set[count _ret,["A3L_bounty2",nil,1125]];
		_ret set[count _ret,["A3L_bounty3",nil,1125]];		
		_ret set[count _ret,["DA_DUTY_VEST",nil,1125]];
		_ret set[count _ret,["TFO_TACVEST_POLICE",nil,1125]];
        _ret set[count _ret,["DAI_TACVEST_WHITE",nil,1125]];
        _ret set[count _ret,["DAI_TACVEST_YELLOW",nil,1125]];
        _ret set[count _ret,["DAI_VEST_BLACK",nil,1125]];
        _ret set[count _ret,["DAI_VEST_TAN",nil,1125]];
		_ret set[count _ret,["V_RebreatherB", "Rebreather", 1125]];
	};
	
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt",nil,1800]
		];
	};
};

_ret;
