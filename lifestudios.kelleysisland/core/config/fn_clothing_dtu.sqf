/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine - Made the template
	
	Description:
        " This file is for DTU Clothing Shop " 
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"DTU's Clothing Store"];

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
			["U_IG_leader","Guerilla Leader",15340],
        ["A3L_Priest_Uniform","Priest Uniform",10800],
		["A3L_BluePoloShirt","Blue Polo Shirt",2000],
		["A3L_GreenPoloShirt","Green Polo Shirt",2000],
		["A3L_PurplePoloShirt","Purple Polo Shirt",2000],
		["A3L_BrownPoloShirt","Brown Polo Shirt",2000],
		["A3L_PinkPoloShirt","Pink Polo Shirt",2000],
		["A3L_Suit_Uniform","Suit",20950],
        ["A3L_Suitpurpletie","Suit (Purple Tie)",20950],
        ["A3L_Suitblacktie","Suit (Black Tie)",20950],
        ["A3L_Suitpink","Suit (Pink)",20950],
        ["A3L_whitesuit","Suit (White)",20950],
		["A3L_Character_Uniform","Life Uniform",2400],
		["A3L_Dude_Outfit","Dude outfit",4500],
		["A3L_Farmer_Outfit","Farmer Outfit",8350],
		["A3L_Worker_Outfit","Worker Outfit",4700],
		["A3LShirt","ArmA 3 Life Shirt",4175],
		["A3L_Poop2day","I Pooped Today!",4175],
		["A3L_A3LogoPants","A3L Logo Pants",5180],
		["pervt_uni","Pervert Shirt",4250],
		["BluePlaid_uni","A3L Plaid (Blue)",6200],
        ["A3LCatShirt","A3L Cat Shirt",1200],
        ["A3LCloudShirt","A3L Cloud Shirt",1200],
        ["A3LHandShirt","A3L Hand Shirt",1200],
        ["A3LPikaShirt","A3L Pika Shirt",1200],
        ["A3LCokeShirt","A3L Coke Shirt",1200],
        ["A3LTigerShirt","A3L Tiger Shirt",1200],
        ["A3LWolfShirt","A3L Wolf Shirt",1200],
        ["A3L_FuckCaiden","#FuckCaiden",1200],
        ["A3L_Illum","Illumiyachti",1200],
        ["A3L_CivShirtAdidasMake","A3L Adidas Make Shirt",1300],
        ["A3L_CivShirtAdidas","A3L Adidas Shirt",1600],
		["A3L_Badoodlenoodleshirt","You w0t m7? BadoodleNoodle Edition",2500],
        ["A3L_CivShirtAnotherCat","A3L Another Cat Shirt",1300],
        ["A3L_CivShirtBillabong","A3L Billabong Shirt",1200],
        ["A3L_CivShirtBillabong2","A3L Billabong Shirt 2 ",1100],
        ["A3L_CivShirtDiamond","A3L Diamond Shirt",1300],
        ["A3L_CivShirtDJ","A3L DJ Shirt",1500],
        ["A3L_CivShirtGetHigh","A3L Get High Shirt",1300],
        ["A3L_CivShirtHollister","A3L Hollister Shirt",1800],
        ["A3L_CivShirtKeepCalm","A3L Keep Calm Shirt",1200],
        ["A3L_CivShirtNikeCamo","A3L Nike Camo Shirt",1300],
        ["A3L_CivShirtNikeDoIt2","A3L Nike Do It 2 Shirt",1000],
        ["A3L_CivShirtNikeDoIt","A3L Nike Do It Shirt",1300],
        ["A3L_CivShirtNikeFeet","A3L Nike Feet Shirt",1300],
        ["TRYK_OVERALL_SAGE_BLKboots_nk",nil,5800],
        ["TRYK_OVERALL_nok_flesh",nil,5500],
        ["TRYK_OVERALL_SAGE_BLKboots_nk_blk",nil,5500],
        ["TRYK_U_B_PCUGs_BLK",nil,5500],
        ["TRYK_U_B_PCUGs_gry",nil,6000],
        ["TRYK_U_B_PCUGs_OD",nil,5500],
        ["TRYK_SUITS_BLK_F",nil,6000],
        ["TRYK_SUITS_BR_F",nil,5500],
        ["TRYK_U_B_BLK_T_BK",nil,6000],
        ["TRYK_U_B_BLK_T_WH",nil,6000],
        ["TRYK_U_B_Denim_T_WH",nil,6000],
        ["TRYK_U_B_Denim_T_BK",nil,6000],
        ["A3L_CivShirtObey","A3L Obey Shirt",1000],
        ["A3L_CivShirtOhBoy","A3L Oh Boy Shirt",1300],
        ["A3L_CivShirtProbe","A3L Probe Shirt",1200],
        ["A3L_CivShirtRelationships","A3L Relationships Shirt",1300],
        ["A3L_CivShirtThanksObama","A3L Thanks Obama Shirt",1400],
        ["A3L_CivShirtVans2","A3L Vans 2 Shirt",1300],
        ["A3L_CivShirtVans","A3L Vans Shirt",1400],
        ["A3L_CivShirtVolcomLogo","A3L Volcom Logo Shirt",1300],
        ["A3L_CivShirtVolcomMonster","A3L Volcom Monster Shirt",1300],
        ["A3L_CivShirtVolcom","A3L Volcom Shirt",1300],
        ["A3LCivPoloGreenBlack","A3L Polo (Green Black)",1400],
        ["A3LCivPoloGreenGreen","A3L Polo (Green Green)",1400],
        ["A3LCivPoloGreenGrey","A3L Polo (Green Grey)",1400],
        ["A3LCivPoloGreenOrange","A3L Polo (Green Orange)",1400],
        ["A3LCivPoloUK","A3L Polo (UK)",1400],
        ["A3LCivPoloUS","A3L Polo (US)",1400],
		["OrangePlaid_uni","A3L Plaid (Orange)",1200],
		["PinkPlaid_uni","A3L Plaid (Pink)",1200],
		["RedPlaid_uni","A3L Plaid (Red)",1200],
		["YellowPlaid_uni","A3L Plaid (Yellow)",1200],
		["checkered_uni","A3L Polo (Checkered)",1200],
		["GbGyBr_uni","A3L Polo (GB-GY-BR)",1200],
		["GnBlBr_uni","A3L Polo (GN-BL-BR)",1200],
		["GnGyBr_uni","A3L Polo (GN-GN-GY)",1200],
		["GyBlBr_uni","A3L Polo (GY-BL-BR)",1200],
		["kingfish_uni","A3L Polo (Kingfish)",1200],
		["mothertrucker_uni","A3L Polo (Mothertrucker)",1250],
		["OrBlBr_uni","A3L Polo (OR-BL-BR)",1250],
		["OrGnGy_uni","A3L Polo (OR-GN-GY)",1250],
		["OrGyBr_uni","A3L Polo (OR-GY-BR)",1250],
		["PkGnGy_uni","A3L Polo (PK-GN-GY)",1350],
		["PkGyBr_uni","A3L Polo (PK-GY-BR)",1350],
		["RdBlBr_uni","A3L Polo (RD-BL-BR)",1350],
		["RdGnGy_uni","A3L Polo (RD-GN-GY)",1350],
		["RdGyBr_uni","A3L Polo (RD-GY-BR)",1350],
		["sohoku_uni","A3L Polo (Sohoku)",1350],
		["WhBlBr_uni","A3L Polo (WH-BL-BR)",1350],
		["WhGyBr_uni","A3L Polo (WH-GY-BR)",1350],
		["YlBlBr_uni","A3L Polo (YL-BL-BR)",1350],
		["YlGnGy_unI","A3L Polo (YL-GN-GY)",1350],
		["YlGyBr_uni","A3L Polo (YL-GY-BR)",1350],
		["racer_uni","A3L Racer Uniform",9250],
		["taxi_uni","A3L Taxi Uniform",9250],
		["arma3","ArmA 3 Polo",7250],
		["arma3black","ArmA 3 Polo (Black)",7250],
		["ATI","ATI Enthusiast",6250],
		["tacobell","Delgado Shirt",5250],
		["dutch","Dutch Shirt",9250],
		["hanacd","Hannes Academy",7250],
		["nvidia","Nvidia Enthusiast",7250],
		["SFG","SF Giant",250],
		["walkingdead","The Walking Dead",5250],
		["KAEL_SUITS_BR_F15","Black Suit 1",16500],
		["KAEL_SUITS_BR_F16","Black Suit 2",16500],
		["KAEL_SUITS_BR_F17","Black Suit 3",16500],
		["KAEL_SUITS_BR_F18","Black Suit 4",16500],
		["KAEL_SUITS_BR_F19","Black Suit 5",16500],
		["KAEL_SUITS_BR_F20","Black Suit 6",16500],
		["KAEL_SUITS_BR_F21","Black Suit 7",16500],
		["KAEL_SUITS_BR_F22","Black Suit 8",16500],
		["KAEL_SUITS_BR_F23","Black Suit 9",16500],
		["KAEL_SUITS_BR_F24","Black Suit 10",16500],
		["KAEL_SUITS_BR_F25","Black Suit 11",16500],
		["KAEL_SUITS_BR_F26","Brown Suit 1",16500],
		["KAEL_SUITS_BR_F27","Brown Suit 2",16500],
		["KAEL_SUITS_BR_F28","Brown Suit 3",16500],
		["KAEL_SUITS_BR_F29","Navy Suit 1",16500],
		["KAEL_SUITS_BR_F30","Navy Suit 2",16500],
		["KAEL_SUITS_BR_F31","Navy Suit 3",16500],
		["KAEL_SUITS_BR_F32","Navy Suit 4",16500],
		["KAEL_SUITS_BR_F33","Navy Suit 5",16500],
		["KAEL_SUITS_BR_F34","Navy Suit 6",16500],
		["KAEL_SUITS_BR_F35","Navy Suit 7",16500],
		["TRYK_U_B_ACU",nil,17000],
		["TRYK_U_B_PCUHsW3nh",nil,17000],
		["TRYK_U_B_ODTAN_CombatUniform",nil,17000],
		["TRYK_shirts_DENIM_BK",nil,17000],
		["TRYK_shirts_DENIM_BL",nil,17000],
		["TRYK_shirts_DENIM_BWH",nil,17000],
		["TRYK_shirts_DENIM_od",nil,17000],
		["TRYK_shirts_DENIM_R",nil,17000],
		["TRYK_shirts_DENIM_RED2",nil,17000],
		["TRYK_shirts_DENIM_WH",nil,17000],
		["TRYK_shirts_DENIM_ylb",nil,17000],
		["TRYK_shirts_BLK_PAD",nil,17000],
		["A3L_CivShirtFormal","A3L Formal 1",1300],
		["A3L_CivShirtFormal2","A3L Formal 2",1300],
		["A3L_CivShirtPrincess","A3L Princess 1",1300],
		["A3L_CivShirtPrincess2","A3L Princess 2",1300],
		["A3L_CivShirtDigBick","A3L Dig Bick",1300],
		["A3L_CivShirtOink","A3L Oink",1300],
		["A3L_CivShirtMoonMan","A3L Moonman",1300],
		["A3L_CivShirtCalled","A3L Called",1300],
		["A3L_CivShirtOnCall","A3L On Call",1300],
		["A3L_CivShirtSuperman","A3L Superman",1300],
		["A3L_CivShirtKappa","A3L Kappa",1300],
		["A3L_CivShirtPepe","A3L Pepel",1300]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["A3L_Legoman","Lego Helmet",5000],
			["A3L_soa_helmet","Biker Helmet",2000],	
            ["party_hat","Party Hat",2500],
            ["rangehat","Range Hat",3500],
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
            ["rangehatpimp","Pimp Range Hat",3500],
			["A3L_gangster_hat","Gangster Mask",2250],
			["A3L_Mask","Mask",2400],				
			["A3L_longhairblack","Long Hair Black",2750],
			["A3L_longhairblond","Long Hair Blond",2750],
			["A3L_longhairbrown","Long Hair Brown",2750],
			["A3L_Crown","Crown",3000],
			["cowboyhat","Cowboyhat",2200],
			["A3L_mexicanhat","Mexican Hat",5050],
			["santahat","Santa hat",2000],
            ["party_hatrb","Rainbow Party Hat",2100],
            ["elfhat","Elf Hat",2000],
			["A3L_Sombrero","Sombrero",5050],
			["turban","Turban",1750],
			["A3L_russianhat","Russianhat",1200],
			["H_Cap_tan",nil,200],
			["H_Cap_blk",nil,200],
			["H_Cap_blk_CMMG",nil,200],
			["H_Cap_brn_SPECOPS",nil,200],
			["H_Cap_tan_specops_US",nil,200],
			["H_Cap_khaki_specops_UK",nil,200],
			["H_Cap_grn",nil,200],
			["H_Cap_grn_BI",nil,200],
			["H_Cap_blk_Raven",nil,200],
			["TRYK_H_Bandana_H",nil,300],
			["TRYK_H_Bandana_wig",nil,300],
			["TRYK_H_Bandana_wig_g",nil,300],
			["TRYK_R_CAP_BLK",nil,300],
			["TRYK_R_CAP_TAN",nil,300],
			["TRYK_R_CAP_OD_US",nil,300],
			["TRYK_H_woolhat",nil,300],
			["TRYK_H_woolhat_br",nil,300],
			["TRYK_H_woolhat_cu",nil,300],
			["TRYK_H_woolhat_tan",nil,300],
			["TRYK_H_woolhat_WH",nil,300],
			["TRYK_H_Booniehat_3CD",nil,850],
			["TRYK_H_Booniehat_AOR1",nil,800],
			["TRYK_H_Booniehat_AOR2",nil,2500],
			["TRYK_H_Booniehat_CC",nil,1200],
			["TRYK_ESS_CAP",nil,2500],
			["TRYK_ESS_CAP_OD",nil,1200],
			["TRYK_H_woolhat_tan",nil,300],
			["TRYK_H_woolhat_WH",nil,300],
			["TRYK_H_wig",nil,400],
			["TRYK_H_headsetcap_Glasses",nil,800],
            ["TRYK_H_headsetcap_blk_Glasses",nil,800],
            ["TRYK_H_headsetcap_od_Glasses",nil,800],
            ["TRYK_r_cap_blk_Glasses",nil,800],
            ["TRYK_r_cap_od_Glasses",nil,800],
            ["TRYK_r_cap_tan_Glasses",nil,800],
			["H_Cap_blk_ION",nil,200]

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
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_lowprofile",nil,55],
			["A3L_Balaclava",nil,60],
			["SFG_Tac_smallBeardB",nil,1720],
			["SFG_Tac_smallBeardD",nil,1720],
			["SFG_Tac_smallBeardG",nil,1720],
			["SFG_Tac_smallBeardO",nil,1720],
			["SFG_Tac_BeardB",nil,1720],
			["SFG_Tac_BeardD",nil,1720],
			["SFG_Tac_BeardG",nil,1720],
			["SFG_Tac_BeardO",nil,1720],
			["SFG_Tac_chinlessbB",nil,1720],
			["SFG_Tac_chinlessbD",nil,1720],
			["SFG_Tac_chinlessbG",nil,1720],
			["SFG_Tac_chinlessbO",nil,1720],
			["SFG_Tac_moustacheD",nil,1720],
			["TRYK_Beard_BK",nil,1400],
			["TRYK_Beard",nil,1400],
			["TRYK_Beard_BW",nil,1400],
			["TRYK_Beard_Gr",nil,1400],
			["TRYK_Beard_BK2",nil,1400],
			["TRYK_Beard2",nil,1400],
			["TRYK_Beard_BW2",nil,1400],
			["TRYK_Beard_Gr2",nil,1400],
			["TRYK_Beard_BK3",nil,1400],
			["TRYK_Beard3",nil,1400],
			["TRYK_Beard_BW3",nil,1400],
			["TRYK_Beard_Gr3",nil,1400],
			["TRYK_Beard_BK4",nil,1400],
			["TRYK_Beard4",nil,1400],
			["TRYK_Beard_BW4",nil,1400],
			["TRYK_Beard_Gr4",nil,1400],
			["TRYK_Shemagh_mesh",nil,1400],
			["TRYK_Shemagh_G",nil,1400],
			["TRYK_Shemagh",nil,1400],
			["TRYK_Shemagh_WH",nil,1400],	
			["SFG_Tac_moustacheG",nil,1720],
			["SFG_Tac_moustacheB",nil,1720],
			["SFG_Tac_moustacheO",nil,1720],
			["SFG_Tac_ChopsB",nil,1720],
			["SFG_Tac_ChopsD",nil,1720],
			["SFG_Tac_ChopsG",nil,1720],
			["SFG_Tac_ChopsO",nil,1720],
			["TRYK_balaclava_BLACK_NV",nil,14150],
			["TRYK_balaclava_NV",nil,14130],
			["TRYK_kio_balaclava_ESS",nil,14150],
			["TRYK_ESS_BLKTAN_NV",nil,14130],
			["TRYK_ESS_BLKBLK_NV",nil,14130]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["A3L_sheriffvest3","Sheriff Vest (Green)",150],
			["A3L_sheriffvest2","Sheriff Vest (Grey)",150],
			["A3L_sheriffvest1","Sheriff Vest (Tan)",150],
			["DTU_VEST_TACTICAL_BK",nil,1250],
			["DTU_VEST_TACTICAL_TAN",nil,1250],
			["A3L_EC_DTU_SPOPS_NP",nil,1250],
			["A3L_EC_DTU_SPOPS_VEST",nil,1250],
			["V_TacVest_khk",nil,1250],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500],
			["V_RebreatherIR",nil,9500],
			["V_RebreatherIR",nil,9500],
			["TRYK_V_tacv1M_BK",nil,14500],
			["TRYK_V_tacv1_BK",nil,14500],
			["TRYK_V_tacv1_CY",nil,14500],
			["TRYK_V_tacv1",nil,14500],
			["TRYK_V_tacv10_BK",nil,14500],
			["TRYK_V_tacv10_TN",nil,14500],
			["TRYK_V_harnes_od_L",nil,14500],
			["TRYK_V_harnes_blk_L",nil,14500],
			["TRYK_V_ChestRig",nil,14500],
			["TRYK_V_ChestRig_L",nil,14500],
			["TRYK_Hrp_vest_ucp",nil,14500],
			["TRYK_Hrp_vest_od",nil,14500],
			["TRYK_V_tacSVD_BK",nil,15000],
			["TRYK_V_tacSVD_OD",nil,15000],
			["TRYK_V_tacv10_OD",nil,14500],
			["V_BandollierB_cbr",nil,4500],
			["TRYK_V_Bulletproof_BL",nil,9500],
			["TRYK_V_Bulletproof_BLK",nil,9500],
			["TRYK_V_Bulletproof",nil,9500]

		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,1500],
			["B_Kitbag_mcamo",nil,1500],
			["B_TacticalPack_oli",nil,1500],
            ["A3L_BergenMurica",nil,1500],
			["B_FieldPack_ocamo",nil,1600],
			["B_Bergen_sgg",nil,1500],
			["B_Kitbag_cbr",nil,1500],
			["TRYK_B_Alicepack",3000],
			["TRYK_B_tube_blk",3000],
			["TRYK_B_tube_cyt",3000],
			["TRYK_B_tube_od",3000],
			["TRYK_B_Belt",nil,3000],
			["TRYK_B_Belt_BLK",nil,3000],
			["TRYK_B_Belt_CYT",nil,3000],
			["TRYK_B_Belt_tan",nil,3000],
			["TRYK_B_Belt_br",nil,3000],
			["TRYK_B_Belt_GR",nil,3000],
			["TRYK_B_Belt_AOR1",nil,3000],
			["TRYK_B_Belt_AOR2",nil,3000],
			["TRYK_B_Coyotebackpack_BLK",nil,1500],
            ["TRYK_B_Coyotebackpack_OD",nil,1600],
			["TRYK_B_Coyotebackpack",nil,1800],
			["TRYK_B_Coyotebackpack_WH",nil,1800],
			["B_Carryall_oli",nil,1800],
			["B_Carryall_khk",nil,1800]
		];
	};
};
