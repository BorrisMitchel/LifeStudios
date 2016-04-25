/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Luke's Jihadi Clothes Line"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
            ["IRA_Soldier_Outfit_8",nil,5500],
            ["IRA_Soldier_Outfit_7",nil,5700],
            ["IRA_Soldier_Outfit_6",nil,5500],
            ["IRA_Soldier_Outfit_5",nil,5900],
            ["IRA_Soldier_Outfit_4",nil,5500],
            ["IRA_Soldier_Outfit_3",nil,5400],
            ["IRA_Soldier_Outfit_2",nil,4400],
            ["IRA_Soldier_Outfit_1",nil,5800],
            ["IRA_Soldier_Outfit_9",nil,5500],
            ["IRA_Soldier_Outfit_10",nil,5500],
            ["IRA_Soldier_Outfit_11",nil,5500],
            ["UVF_Soldier_Outfit_3",nil,6000],
            ["TRYK_U_B_ARO1_BLK_CombatUniform",nil,5500],
            ["TRYK_U_B_ARO1_BLK_R_CombatUniform",nil,5700],
            ["TRYK_U_B_ARO1_CBR_CombatUniform",nil,5500],
            ["TRYK_U_B_ARO1_CBR_R_CombatUniform",nil,5900],
            ["TRYK_U_B_ARO1_GR_CombatUniform",nil,5500],
            ["TRYK_U_B_ARO1_GR_R_CombatUniform",nil,5400],
            ["TRYK_U_B_ARO1_GRY_CombatUniform",nil,4400],
            ["TRYK_U_B_ARO1_GRY_R_CombatUniform",nil,5800],
            ["TRYK_U_B_ARO2_CombatUniform",nil,5500],
            ["TRYK_U_B_ARO2R_CombatUniform",nil,5500],
            ["TRYK_C_AOR2_T",nil,5500],
            ["TRYK_U_B_AOR2_BLK_CombatUniform",nil,6000],
            ["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,5500],
            ["TRYK_U_B_AOR2_GRY_CombatUniform",nil,5700],
            ["TRYK_U_B_AOR2_GRY_R_CombatUniform",nil,5500],
            ["TRYK_U_B_AOR2_OD_CombatUniform",nil,5900],
            ["TRYK_U_B_AOR2_OD_R_CombatUniform",nil,5500],
            ["TRYK_U_B_BLKBLK_CombatUniform",nil,5400],
            ["TRYK_U_B_BLKBLK_R_CombatUniform",nil,4400],
            ["TRYK_U_B_BLKOCP_CombatUniform",nil,5800],
            ["TRYK_U_B_BLKOCP_R_CombatUniformTshirt",nil,5500],
            ["TRYK_U_B_BLKTAN_CombatUniform",nil,5500],
            ["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,5500],
            ["TRYK_U_B_BLKTAN_CombatUniform",nil,6000],
            ["TRYK_U_B_fleece_UCP",nil,5500],
            ["TRYK_U_B_fleece",nil,5700],
            ["TRYK_U_Bts_PCUs",nil,5500],
            ["TRYK_U_Bts_GRYGRY_PCUs",nil,5900],
            ["TRYK_U_Bts_UCP_PCUs",nil,5500],
            ["TRYK_U_Bts_Wood_PCUs",nil,5400],
            ["TRYK_U_Bts_PCUODs",nil,4400],
            ["A3LJumperUSBlack",nil,6200],
			["TRYK_U_B_PCUHsW3",nil,6300],
			["TRYK_U_hood_nc",nil,6300],
			["TRYK_U_hood_mc",nil,6300],
			["TRYK_U_denim_hood_blk",nil,6300],
			["TRYK_U_denim_jersey_blu",nil,6300],
			["TRYK_U_denim_jersey_blk",nil,6300],
			["TRYK_U_denim_hood_mc",nil,6300],
			["TRYK_T_OD_PAD",nil,6300],
			["TRYK_T_BLK_PAD",nil,6300],
            ["TRYK_U_B_PCUHs",nil,6300],
			["TRYK_U_B_PCUGHs",nil,6300],
			["TRYK_U_B_PCUODHs",nil,6300],
			["TRYK_U_B_UCP_PCUs_R",nil,6300],
			["TRYK_U_B_UCP_PCUs",nil,6300],
			["TRYK_U_B_Wood_PCUs",nil,6300],
			["TRYK_U_B_Wood_PCUs_R",nil,6300],
			["TRYK_U_B_PCUODs",nil,6300],
			["TRYK_U_hood_nc",nil,6300],
			["TRYK_T_BLK_PAD",nil,6300],
			["TRYK_T_CSAT_PAD",nil,6300],
			["TRYK_T_OD_PAD",nil,6300],
			["TRYK_T_TAN_PAD",nil,6300],
			["TRYK_T_T2_PAD",nil,6300],
			["TRYK_T_camo_3c_BG",nil,6300],
			["TRYK_T_camo_desert_marpat_BG",nil,6300],
			["TRYK_T_camo_Wood_BG",nil,6300],
			["TRYK_T_camo_wood_marpat_BG",nil,6300],
			["TRYK_T_camo_3c",nil,6300],
			["TRYK_T_camo_Desert_marpat",nil,6300],
			["TRYK_shirts_DENIM_od_Sleeve",nil,17000],
			["TRYK_shirts_DENIM_ylb_Sleeve",nil,17000],
			["TRYK_shirts_DENIM_BK_Sleeve",nil,17000],
			["TRYK_shirts_DENIM_BL_Sleeve",nil,17000],
			["TRYK_shirts_DENIM_BWH_Sleeve",nil,17000],
			["TRYK_shirts_DENIM_R_Sleeve",nil,17000],
			["TRYK_shirts_PAD_BL",nil,17000],
			["TRYK_shirts_PAD_RED2",nil,17000],
			["TRYK_U_pad_hood_CSATBlk",nil,17000],
			["TRYK_U_nohoodPcu_gry",nil,17000],
			["TRYK_U_denim_hood_3c",nil,17000],
			["TRYK_U_denim_hood_mc",nil,17000],
			["TRYK_U_B_BLK_T_BG_BK",nil,17000],
			["TRYK_U_B_RED_T_BG_BR",nil,17000],
			["TRYK_U_B_RED_T_BR",nil,17000],
			["TRYK_U_B_PCUHsW6",nil,17000],
			["TRYK_U_B_PCUHsW5",nil,17000],	
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_IG_leader","Guerilla Leader",15340]


		];
	};
	
	//Hats
	case 1:
	{
		[
            ["H_Beret_blk",nil,250],
			["A3L_BeretCivGREEN",nil,250],
			["A3L_BeretCivBLUE",nil,250],
			["A3L_BeretCivRED",nil,250],
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["Masque_forceAlpha",nil,900],
			["Masque_GdG",nil,400],
			["Masque_Smiley",nil,600],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["TRYK_H_Booniehat_3CD",nil,850],
			["TRYK_H_Booniehat_AOR1",nil,800],
			["TRYK_H_Booniehat_AOR2",nil,2500],
			["TRYK_H_Booniehat_CC",nil,1200],
			["TRYK_ESS_CAP",nil,2500],
			["TRYK_ESS_CAP_OD",nil,1200],
			["TRYK_H_woolhat",nil,300],
			["TRYK_H_woolhat_br",nil,300],
			["TRYK_H_woolhat_cu",nil,300],
			["TRYK_H_woolhat_tan",nil,300],
			["TRYK_H_woolhat_WH",nil,300],
			["H_Bandanna_camo",nil,650]
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
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,1337],
			["G_Balaclava_combat",nil,1337],
			["G_Balaclava_lowprofile",nil,1337],
			["TRYK_balaclava_BLACK_NV",nil,14150],
			["TRYK_balaclava_NV",nil,14130],
			["TRYK_kio_balaclava_ESS",nil,14150],
			["TRYK_ESS_BLKTAN_NV",nil,14130],
			["TRYK_ESS_BLKBLK_NV",nil,14130],
			["A3L_Balaclava",nil,1337]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["REB_VEST_BLACK",nil,12500],
			["REB_VEST_URBAN",nil,12500],
			["REB_VEST_PINK",nil,12500],
			["REB_VEST_JUNGLE",nil,12500],
			["REB_VEST_DIGI",nil,12500],
			["REB_VEST_DESERT",nil,12500],
			["TRYK_V_tacv1M_BK",nil,14500],
			["TRYK_V_tacv1_BK",nil,14500],
			["TRYK_V_tacv1_CY",nil,14500],
			["TRYK_V_tacv1",nil,14500],
			["TRYK_V_tacv10_BK",nil,14500],
			["TRYK_V_tacv10_TN",nil,14500],
			["TRYK_V_tacv10_OD",nil,14500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,1500],
			["B_Kitbag_mcamo",nil,1500],
			["B_TacticalPack_oli",nil,1500],
			["B_FieldPack_ocamo",nil,1600],
			["B_Bergen_sgg",nil,1500],
			["B_Kitbag_cbr",nil,1500],
			["A3L_Digiciv",nil,2000],
			["A3L_Jungleciv",nil,2000],
			["A3L_Browngreyciv",nil,2000],
			["A3L_Desertciv",nil,2000],
			["A3L_Urbanciv",nil,2000],
			["TRYK_B_Belt",nil,3000],
			["TRYK_B_Belt_BLK",nil,3000],
			["TRYK_B_Belt_CYT",nil,3000],
			["TRYK_B_Belt_tan",nil,3000],
			["TRYK_B_Belt_br",nil,3000],
			["TRYK_B_Belt_GR",nil,3000],
			["TRYK_B_Belt_AOR1",nil,3000],
			["TRYK_B_Belt_AOR2",nil,3000],
			["B_Carryall_oli",nil,1800],
			["B_Carryall_khk",nil,1800]
		];
	};
};