#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array:
	[Shop Name,
	[ //Array of items to add to the store
	[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{	
	case "med_supplies":
	{
		switch (true) do
		{
			case (playerSide != independent): {"You are not an EMS"};
			default {
				["EMS Supplies Shop",
					[
						["Medikit",nil,20],
						["FirstAidKit",nil,10]
					]
				];
			};
		};
	};

	case "med_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"You are not an EMS"};
			default {
				["EMS Basic Shop",
					[
						["A3L_Extinguisher",nil,100],
						["tf_anprc152","Radio",100],
						["tf_rt1523g",nil,100],
						["ItemGPS",nil,100],
						["Binocular",nil,100],
						["ToolKit",nil,100],
						["Chemlight_red",nil,50],
						["pmc_earpiece",nil,100],
						["tf_anprc155_coyote",nil,500]
					]
				];
			};
		};
	};

	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a Junior Deputy!"};
			case (__GETC__(life_coplevel) < 1): {"You are not a Junior Deputy!"};
			default
			{
				["Junior Deputy Shop",
					[
						["FirstAidKit",nil,1250],
						["Taser_26","Taser",500],
						["26_cartridge",nil,50],
						["RH_g19",nil,12500],
						["RH_17Rnd_9x19_g17","Glock Mag",500],
						["RH_p226",nil,7500],
						["RH_15Rnd_9x19_SIG",nil,500],
						["RH_m9",nil,7500],
						["RH_15Rnd_9x19_M9",nil,500],
						["RH_m1911",nil,7500],
						["RH_7Rnd_45cal_m1911",nil,500],
						//["RH_M4sbr_b",nil,18500],
						//["RH_M4sbr",nil,18500],
						//["RH_30Rnd_556x45_M855A1",nil,1346],
						["RH_sbr9",nil,18500],
						["RH_32Rnd_9mm_M822",nil,1346],
						["RH_cmore",nil,4400],
						["RH_barska_rds",nil,4400],
						["Chemlight_red",nil,60],
						["ItemWatch",nil,180],
						["ItemMap",nil,150],
						["ItemCompass",nil,90],
						["Binocular",nil,250],
						["ItemGPS",nil,120],
						["ToolKit",nil,150],
						["pmc_earpiece",nil,120],
						["tf_anprc152", "Radio",180],
						["tf_rt1523g_black",nil,1000],
						["tf_rt1523g_green",nil,1000],
						["tf_rt1523g_sage",nil,1000],									
						["Chemlight_red",nil,50],
						["ItemWatch",nil,100],
						["ItemMap",nil,100],
						["ItemCompass",nil,100],
						["Binocular",nil,250],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["pmc_earpiece",nil,120],
						["tf_anprc152","Radio",100],
						["tf_rt1523g",nil,1000],
						["tf_rt1523g_black",nil,1000],
						["tf_rt1523g_green",nil,1000],
						["tf_rt1523g_sage",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_doc_jdep":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a DoC Junior Deputy!"};
			case (__GETC__(life_coplevel) < 1): {"You are not a DoC Junior Deputy!"};
			default
			{
				["DoC Junior Deputy Shop",
					[
						["FirstAidKit",nil,1250],
						["Taser_26","Taser",500],
						["26_cartridge",nil,50],
						["RH_g19",nil,12500],
						["RH_17Rnd_9x19_g17","Glock Mag",500],
						["RH_p226",nil,7500],
						["RH_15Rnd_9x19_SIG",nil,500],
						["RH_sbr9",nil,18500],
						["RH_32Rnd_9mm_M822",nil,1346],
						["FHQ_optic_AC11704",nil,4400],
						["RH_barska_rds",nil,4400],
						["RH_SFM952V",nil,2500],
						["ItemWatch",nil,100],
						["ItemMap",nil,100],
						["ItemCompass",nil,100],
						["Binocular",nil,250],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["pmc_earpiece",nil,120],
						["tf_anprc152", "Radio",180]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a Deputy!"};
			case (__GETC__(life_coplevel) < 2): {"You are not an Deputy!"};
			default
			{
				["Deputy Shop",
					[
						["FirstAidKit",nil,950],
						["Taser_26","Taser",500],
						["26_cartridge",nil,50],
						//["RH_M16A4",nil,18500],
						//["RH_30Rnd_556x45_M855A1",nil,1346],
						["RH_g19",nil,12500],
						["RH_17Rnd_9x19_g17","Glock Mag",500],
						["RH_p226",nil,7500],
						["RH_15Rnd_9x19_SIG",nil,500],
						["RH_m9",nil,7500],
						["RH_15Rnd_9x19_M9",nil,500],
						["RH_m1911",nil,7500],
						["RH_7Rnd_45cal_m1911",nil,500],
						["hlc_rifle_M4",nil,37828],
						["hlc_30rnd_556x45_EPR",nil,1366],
						["RH_M4A1_ris",nil,37828],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["RH_cmore",nil,2500],
						["RH_barska_rds",nil,2500],
						["RH_eotexps3",nil,2500],
						//["FHQ_optic_AC11704",nil,4400],									
						["Chemlight_red",nil,50],
						["ItemWatch",nil,100],
						["ItemMap",nil,100],
						["ItemCompass",nil,100],
						["Binocular",nil,250],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["pmc_earpiece",nil,120],
						["tf_anprc152","Radio",100],
						["tf_rt1523g",nil,1000],
						["tf_rt1523g_black",nil,1000],
						["tf_rt1523g_green",nil,1000],
						["tf_rt1523g_sage",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_doc_dep":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a DoC Deputy!"};
			case (__GETC__(life_coplevel) < 2): {"You are not an DoC Deputy!"};
			default
			{
				["DoC Deputy Shop",
					[
						["FirstAidKit",nil,1250],
						["Taser_26","Taser",500],
						["26_cartridge",nil,50],
						["RH_g19",nil,12500],
						["RH_17Rnd_9x19_g17","Glock Mag",500],
						["RH_p226",nil,7500],
						["RH_15Rnd_9x19_SIG",nil,500],
						["RH_M4sbr",nil,18500],
						["RH_30Rnd_556x45_M855A1",nil,1346],
						["FHQ_optic_AC11704",nil,4400],
						["RH_barska_rds",nil,4400],
						["RH_eotech553",nil,2500],
						["RH_SFM952V",nil,2500],
						["A3L_CZ550",nil,25000],
						["A3L_CZ550Scope",nil,2500],
						["A3L_CZ550mag",nil,250],
						["ItemWatch",nil,100],
						["ItemMap",nil,100],
						["ItemCompass",nil,100],
						["Binocular",nil,250],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["pmc_earpiece",nil,120],
						["tf_anprc152", "Radio",180]
					]
				];
			};
		};
	};
	 
	case "cop_corporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a senior rank!"};
			default
			{
				["Senior Deputy Shop",
					[
						["FirstAidKit",nil,950],
						["Taser_26","Taser",500],
						["26_cartridge",nil,50],
						["prpl_benelli_pgs",nil,4000],
						["prpl_8Rnd_12Gauge_Pellets",nil,500],
						["prpl_8Rnd_12Gauge_Slug",nil,500],
						//["RH_M16A4",nil,18500],
						//["RH_30Rnd_556x45_M855A1",nil,1346],
						["RH_g19",nil,12500],
						["RH_17Rnd_9x19_g17","Glock Mag",500],
						["RH_p226",nil,7500],
						["RH_15Rnd_9x19_SIG",nil,500],
						["RH_m9",nil,7500],
						["RH_15Rnd_9x19_M9",nil,500],
						["RH_m1911",nil,7500],
						["RH_7Rnd_45cal_m1911",nil,500],
						["hlc_rifle_M4",nil,37828],
						["hlc_30rnd_556x45_EPR",nil,1366],
						["RH_M4A1_ris",nil,37828],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["RH_M16A4_m",nil,37828],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["RH_cmore",nil,2500],
						["RH_barska_rds",nil,2500],
						["RH_eotexps3",nil,2500],
						//["FHQ_optic_AC11704",nil,4400],									
						["Chemlight_red",nil,50],
						["ItemWatch",nil,100],
						["ItemMap",nil,100],
						["ItemCompass",nil,100],
						["Binocular",nil,250],
						["ItemGPS",nil,150],
						["ToolKit",nil,250],
						["pmc_earpiece",nil,120],
						["tf_anprc152","Radio",100],
						["tf_rt1523g",nil,1000],
						["tf_rt1523g_black",nil,1000],
						["tf_rt1523g_green",nil,1000],
						["tf_rt1523g_sage",nil,1000]
					]
				];
			};
		};
	};
		
	case "cop_doc_sdep":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a DoC Senior Deputy!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a DoC Senior Deputy Rank!"};
			default
			{
				["DoC Senior Deputy Shop",
					[
						["FirstAidKit",nil,1250],
						["Taser_26","Taser",500],
						["26_cartridge",nil,50],
						["prpl_benelli_pgs",nil,4000],
						["prpl_8Rnd_12Gauge_Pellets",nil,500],
						["RH_g19",nil,12500],
						["RH_17Rnd_9x19_g17","Glock Mag",500],
						["RH_p226",nil,7500],
						["RH_15Rnd_9x19_SIG",nil,500],
						["hlc_rifle_M4",nil,37828],
						["hlc_30rnd_556x45_EPR",nil,1366],
						["RH_M4A1_ris",nil,37828],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["FHQ_optic_AC11704",nil,4400],
						["RH_barska_rds",nil,4400],
						["RH_eotech553",nil,2500],
						["RH_SFM952V",nil,2500],
						["A3L_CZ550",nil,25000],
						["A3L_CZ550Scope",nil,2500],
						["A3L_CZ550mag",nil,250],
						["ItemWatch",nil,100],
						["ItemMap",nil,100],
						["ItemCompass",nil,100],
						["Binocular",nil,250],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["pmc_earpiece",nil,120],
						["tf_anprc152", "Radio",180]
					]
				];
			};
		};
	};
		
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
			default
			{
				["SGT/Command Shop",
					[
						["FirstAidKit",nil,950],
						["hlc_rifle_M4",nil,34924],
						["RH_M4A1_ris",nil,37828],
						["RH_Hk416c",nil,37828],
						["RH_M16A4_m",nil,37828],
						["prpl_benelli_pgs",nil,4000],
						["prpl_8Rnd_12Gauge_Pellets",nil,500],
						["RH_compm4s",nil,2500],
						["RH_LTdocter",nil,2500],
						["RH_LTdocterl",nil,2500],
						["RH_zpoint",nil,2500],
						["RH_compM2",nil,2500],
						["RH_eotexps3",nil,2500],
						["RH_cmore",nil,2500],
						["RH_barska_rds",nil,2500],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["hlc_30rnd_556x45_EPR",nil,1366],
						["FHQ_optic_AC11704",nil,2500],
						["RH_g19",nil,12500],
						["RH_17Rnd_9x19_g17","Glock Mag",500],
						["RH_p226",nil,7500],
						["RH_15Rnd_9x19_SIG",nil,500],
						["RH_m9",nil,7500],
						["RH_15Rnd_9x19_M9",nil,500],
						["RH_kimber_nw",nil,7500],
						["RH_m1911",nil,7500],
						["RH_7Rnd_45cal_m1911",nil,500],
						["Taser_26","Taser",500],
						["26_cartridge",nil,50],	
						["RH_SFM952V",nil,2500],
						["RH_X300",nil,2500],									
						["Chemlight_red",nil,50],
						["ItemWatch",nil,100],
						["ItemMap",nil,100],
						["ItemCompass",nil,100],
						["Binocular",nil,250],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["pmc_earpiece",nil,100],
						["tf_anprc152","Radio",100],
						["tf_rt1523g",nil,1000],
						["tf_rt1523g_black",nil,1000],
						["tf_rt1523g_green",nil,1000],
						["tf_rt1523g_sage",nil,1000],
						["A3L_CZ550",nil,25000],
						["A3L_CZ550Scope",nil,2500],
						["A3L_CZ550mag",nil,250]
					]
				];
			};
		};
	};
	
	case "cop_doc_serglt":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a DoC Sergeant or Lieutenant!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant or lieutenant rank!"};
			default
			{
				["DoC SGT/Lieutenant Shop",
					[
						["FirstAidKit",nil,1250],
						["Taser_26","Taser",500],
						["26_cartridge",nil,50],
						["RH_g19",nil,12500],
						["RH_17Rnd_9x19_g17","Glock Mag",500],
						["RH_p226",nil,7500],
						["RH_15Rnd_9x19_SIG",nil,500],
						["hlc_rifle_M4",nil,37828],
						["hlc_30rnd_556x45_EPR",nil,1366],
						["RH_M4A1_ris",nil,37828],
						["RH_Hk416c",nil,37828],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["RH_M16A4_m",nil,37828],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["FHQ_optic_AC11704",nil,4400],
						["RH_barska_rds",nil,4400],
						["RH_eotech553",nil,2500],
						["RH_SFM952V",nil,2500],
						["A3L_CZ550",nil,25000],
						["A3L_CZ550Scope",nil,2500],
						["A3L_CZ550mag",nil,250],
						["ItemWatch",nil,100],
						["ItemMap",nil,100],
						["ItemCompass",nil,100],
						["Binocular",nil,250],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["pmc_earpiece",nil,120],
						["tf_anprc152", "Radio",180]
					]
				];
			};
		};
	};
	
	case "cop_doc_warden":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a Warden!"};
			case (__GETC__(life_coplevel) < 5): {"You are not a Warden"};
			default
			{
				["DoC Warden Shop",
					[
						["FirstAidKit",nil,1250],
						["Taser_26","Taser",500],
						["26_cartridge",nil,50],
						["prpl_benelli_pgs",nil,4000],
						["prpl_8Rnd_12Gauge_Pellets",nil,500],
						["RH_g19",nil,12500],
						["RH_17Rnd_9x19_g17","Glock Mag",500],
						["RH_p226",nil,7500],
						["RH_15Rnd_9x19_SIG",nil,500],
						["RH_uspm",nil,10000],
						["RH_16Rnd_40cal_usp",nil,1000],
						["hlc_rifle_M4",nil,37828],
						["hlc_30rnd_556x45_EPR",nil,1366],
						["RH_M4A1_ris",nil,37828],
						["RH_Hk416c",nil,37828],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["RH_M16A4_m",nil,37828],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["FHQ_optic_AC11704",nil,4400],
						["RH_barska_rds",nil,4400],
						["RH_eotech553",nil,2500],
						["RH_SFM952V",nil,2500],
						["A3L_CZ550",nil,25000],
						["A3L_CZ550Scope",nil,2500],
						["A3L_CZ550mag",nil,250],
						["ItemWatch",nil,100],
						["ItemMap",nil,100],
						["ItemCompass",nil,100],
						["Binocular",nil,250],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["pmc_earpiece",nil,120],
						["tf_anprc152", "Radio",180]
					]
				];
			};
		};
	};

	case "cop_DTU":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not a Detective"};
			default
			{
				["DTU Shop",
					[
						["FirstAidKit",nil,950],
						["RH_pdw","Casper's Baby",25000],
						["RH_30Rnd_6x35_mag",nil,500],
						["RH_gsh18",nil,5000],
						["RH_18Rnd_9x19_gsh",nil,500],
						["RH_g18",nil,50000],
						["RH_19Rnd_9x19_g18",nil,500],
						["RH_kimber",nil,5000],
						["RH_kimber_nw",nil,5000],
						["RH_7Rnd_45cal_m1911",nil,500],
						["RH_muzi",nil,4230],
						["RH_30Rnd_9x19_UZI",nil,500],
						["RH_deagle",nil,5000],
						["RH_Deagleg",nil,5000],
						["RH_Deagles",nil,5000],
						["RH_7Rnd_50_AE",nil,500],
						["hlc_rifle_aku12",nil,25000],
						["hlc_rifle_ak12",nil,25000],
						["hlc_rifle_ak74",nil,25000],
						["hlc_rifle_aks74u",nil,25000],
						["hlc_rifle_CQBR",nil,25000],
						["RH_M4A1_ris",nil,25000],	
						["RH_m4_moe",nil,25000],
						["RH_m4_moe_b",nil,25000],
						["RH_m4_moe_g",nil,25000],
						["RH_M4sbr",nil,25000],
						["RH_M4sbr_g",nil,25000],
						["RH_M4sbr_b",nil,25000],
						["RH_Hk416s",nil,25000],
						["RH_M16A4",nil,25000],
						["RH_M16A3",nil,25000],
						["RH_M16A2",nil,25000],
						["30Rnd_556x45_Stanag",nil,5000],
						["RH_30Rnd_556x45_M855A1",nil,5000],
						["hlc_30Rnd_545x39_B_AK",nil,5000],
						["RH_SFM952V",nil,2500],
						["RH_X300",nil,2500],
						["RH_compm4s",nil,2500],
						["RH_LTdocter",nil,2500],
						["RH_LTdocterl",nil,2500],
						["RH_zpoint",nil,2500],
						["RH_compM2",nil,2500],
						["RH_eotexps3",nil,2500],
						["RH_cmore",nil,2500],
						["NVGoggles_OPFOR",nil,1500],
						["NVGoggles",nil,1500],
						["NVGoggles_INDEP",nil,1500]
					]
				];
			};
		};
	};

	case "cop_swat":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"You are not at a SERT Member rank!"};
			default
			{
				["SWAT Basic Shop",
					[
						["FirstAidKit",nil,950],
						["prpl_benelli_pgs",nil,4000],
						["prpl_8Rnd_12Gauge_Pellets",nil,500],
						["prpl_8Rnd_12Gauge_Slug",nil,500],
						["RH_uspm",nil,10000],
						["RH_16Rnd_40cal_usp",nil,1000],
						["RH_kimber_nw",nil,7000],
						["RH_7Rnd_45cal_m1911",nil,500],
						["RH_p226",nil,7000],
						["RH_15Rnd_9x19_SIG",nil,500],
						["hlc_smg_mp510",nil,9724],
						["hlc_30Rnd_10mm_B_MP5",nil,1388],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["RH_compm4s",nil,2500],
						["RH_LTdocter",nil,2500],
						["RH_LTdocterl",nil,2500],
						["RH_zpoint",nil,2500],
						["RH_compM2",nil,2500],
						["RH_eotexps3",nil,2500],
						["FHQ_optic_ACOG",nil,2500],
						["RH_cmore",nil,2500],
						["RH_barska_rds",nil,2500],
						["RH_M4m","Salt Shooter",37828],
						["RH_M4A1_ris",nil,37828],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["hlc_rifle_M4",nil,34924],
						["hlc_30rnd_556x45_EPR",nil,1366],
						["FHQ_optic_AC11704",nil,2500],
						["ToolKit",nil,150],
						["tf_anprc152","Radio",100],
						["pmc_earpiece",nil,100]
					]
				];
			};
		};
	};

	case "cop_swat_cmd":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 8): {"You are not at a SERT Command rank!"};
			default
			{
				["SWAT Command Shop",
					[
						["FirstAidKit",nil,950],
						["M32_EP1","M32 Launcher",40000],
						["SmokeYellow_M32_mag","Tear Gas Mag",800],
						["FlareWhite_M32_mag","White Flare Mag",100],
						["SmokeShellYellow","Tear Gas Grenade",100],
						["SUPER_flash","Flash Bang",400],
						["hlc_rifle_bcmjack","Jack Carbine",37000],
						["A3L_Tactical_Shield",nil,50000],
						["RH_Mk12mod1",nil,50000],
						["RH_hb_b",nil,2000],
						["RH_M4A1_ris",nil,37000],
						["RH_30Rnd_556x45_M855A1",nil,2000],
						["RH_30Rnd_762x35_FMJ",nil,2000],
						["RH_Deaglem","Aladeen's Boomstick",7500],
						["RH_7Rnd_50_AE",nil,500],
						["RH_Deflash",nil,2500],
						["FHQ_optic_ACOG",nil,2500],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["RH_peq15b",nil,2500],
						["RH_compm4s",nil,2500],
						["RH_LTdocter",nil,2500],
						["RH_LTdocterl",nil,2500],
						["RH_zpoint",nil,2500],
						["RH_compM2",nil,2500],
						["RH_eotexps3",nil,2500],
						["RH_cmore",nil,2500],
						["RH_barska_rds",nil,2500],
						["FHQ_optic_AC12136",nil,2500],
						["FHQ_optic_AC11704",nil,2500],
						//["hlc_muzzle_556NATO_KAC",nil,1706],
						["hlc_30rnd_556x45_EPR",nil,1000]
					]
				];
			};
		};
	};
	
case "cop_doj":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 8): {"You are not part of the DoJ!"};
			default
			{
				["DOJ/SIU Weapon Shop",
					[
						["FirstAidKit",nil,950],
						["RH_M4A6",nil,37000], 
						["RH_30Rnd_68x43_FMJ",nil,1750], 
						["prpl_benelli_pgs",nil,4000],
						["prpl_8Rnd_12Gauge_Pellets",nil,500],
						["RH_fnp45",nil,10050], 
						["RH_15Rnd_45cal_fnp",nil,700], 
						["FHQ_optic_ACOG",nil,2500],
						["RH_eotexps3",nil,2500],
						["RH_eotech553",nil,2500],
						["RH_compM2l",nil,2500],
						["RH_peq15b_top",nil,2500], 
						["optic_MRD",nil,2500],
						["RH_SFM952V",nil,2500],
						["RH_X300",nil,2500],
						["TV_Camera",nil,2500]
					]
				];
			};
		};
	};
	
case "cop_doj_cmd":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not SIU Command!"};
			case (__GETC__(life_coplevel) < 9): {"You are not part of the DoJ Command!"};
			default
			{
				["SIU Command Weapon Shop",
					[
						["FirstAidKit",nil,950],
						["SUPER_flash","Flash Bang",400],
						["RH_SR25EC",nil,40000], 
						["RH_20Rnd_762x51_Mk319",nil,2000],
						["SmokeShellYellow","Tear Gas",100]
						
					]
				];
			};
		};
	};
				

	case "ems_flares":
	{
		switch(true) do
		{
			case (playerSide != independent): {"You are not an EMS!"};
			default
			{
				["Flare Shop",
					[
						["hgun_Pistol_Signal_F",nil,5000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500]
					]
				];
			};
		};
	};

	case "dive":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_dive): {"You don't have a Diving license!"};
			default
			{
				["Nathaniel's Diving Shop",
					[
						["arifle_SDAR_F",nil,125000],
						["20Rnd_556x45_UW_mag",nil,7500]
					]
				];
			};
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Jihadi Shop",
					[

						["RH_gsh18",nil,62500],
						["RH_18Rnd_9x19_gsh",nil,3125],
						["RH_g18",nil,70000],
						["RH_19Rnd_9x19_g18",nil,3500],
						["RH_kimber",nil,57500],
						["RH_kimber_nw",nil,57500],
						["RH_7Rnd_45cal_m1911",nil,2875],
						["RH_muzi",nil,95000],
						["RH_30Rnd_9x19_UZI",nil,4750],
						["RH_deagle",nil,125000],
						["RH_Deagleg",nil,225000],
						["RH_Deagles",nil,125000],
						["RH_7Rnd_50_AE",nil,6250],
						["hlc_rifle_aku12",nil,275000],
						["hlc_rifle_ak12",nil,275000],
						["hlc_rifle_ak74",nil,275000],
						["hlc_rifle_aks74u",nil,275000],
						["hlc_rifle_CQBR",nil,325000],
						["RH_M4A1_ris",nil,350000],	
						["RH_m4_moe",nil,350000],
						["RH_m4_moe_b",nil,350000],
						["RH_m4_moe_g",nil,350000],
						["RH_M4sbr",nil,320000],
						["RH_M4sbr_g",nil,320000],
						["RH_M4sbr_b",nil,320000],
						["RH_Hk416s",nil,360000],
						["RH_M16A4",nil,350000],
						["RH_M16A3",nil,350000],
						["RH_M16A2",nil,350000],
						["30Rnd_556x45_Stanag",nil,10000],
						["RH_30Rnd_556x45_M855A1",nil,10000],
						["hlc_30Rnd_545x39_B_AK",nil,10000],
						["RH_SFM952V",nil,33000],
						["RH_compm4s",nil,33000],
						["RH_LTdocter",nil,33000],
						["RH_LTdocterl",nil,33000],
						["RH_zpoint",nil,33000],
						["RH_compM2",nil,33000],
						["RH_eotexps3",nil,33000],
						["RH_cmore",nil,33000],
						["RH_barska_rds",nil,33000],
						["hlc_optic_kobra",nil,33000],
						["FHQ_optic_AC11704",nil,330000]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_fcl): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["RH_g17",nil,55000],
						["RH_17Rnd_9x19_g17",nil,2750],
						["RH_m9",nil,44500],
						["RH_15Rnd_9x19_M9",nil,2225],
						["RH_mak",nil,45500],
						["RH_8Rnd_9x18_Mak",nil,2275],
						["RH_m1911",nil,46250],
						["RH_7Rnd_45cal_m1911",nil,2325],
						["RH_mk2",nil,54500],
						["RH_10Rnd_22LR_mk2",nil,2725],
						//["RH_usp",nil,57500], one shot kill needs fixed in pbo
						//["RH_12Rnd_45cal_usp",nil,2875],
						["RH_ttracker",nil,46000],
						["RH_ttracker_g",nil,250000],
						["RH_6Rnd_45ACP_Mag",nil,2300]
					]
				];
				
			};
		};
	};

	case "mining":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Zannaza's Mining Equipment",
					[
						["MeleeHatchet","Axe",5000],
						["A3L_Pickaxe","Pickaxe",5000],
						["Hatchet_Swing","Axe Blade",1000],
						["Pickaxe_Swing","Pickaxe Blade",1000]
					]
				];
			};
		};
	};

	case "rifle":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};\
			case (!license_civ_rifle): {"You don't have a Rifle license!"};
			default
			{
				["Jonas Rifle Shop",
					[
						["A3L_CZ550",nil,162500],
						["A3L_CZ550mag",nil,500],
						["A3L_CZ550Scope",nil,2500],
						["RH_ar10",nil,542500],
						["RH_20Rnd_762x51_AR10",nil,5500]
					]
				];
			};
		};
	};		

	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["RH_g18",nil,42650],
						["RH_19Rnd_9x19_g18",nil,4720],
						["RH_muzi",nil,92500],
						["RH_30Rnd_9x19_UZI",nil,6730]											
					]
				];
			};
		};
	};

	case "genstore":
	{
		["Erie County General Store",
			[
				["FirstAidKit",nil,1000],
				["ItemGPS",nil,1000],
				["ItemMap",nil,150],
				["tf_anprc148jem","Radio",900],
				["ItemWatch",nil,150],
				["ItemCompass",nil,150],
				["Binocular",nil,1250],
				["ToolKit",nil,750],
				["NVGoggles_OPFOR",nil,5000],
				["NVGoggles",nil,5000],
				["NVGoggles_INDEP",nil,5000],
				["Chemlight_red",nil,150],
				["Chemlight_yellow",nil,150],
				["Chemlight_green",nil,150],
				["Chemlight_blue",nil,150]
			]
		];
	};
};
