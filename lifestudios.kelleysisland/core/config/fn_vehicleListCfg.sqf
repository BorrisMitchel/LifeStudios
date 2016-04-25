#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "bicycle_shop":
	{
		_return =
		[
			["A3L_Bicycle",250],
			["A3L_OldBike",200]
		];
	};
	case "dezzie_car":
	{
		_return = [
			["IVORY_PRIUS",45000],
            ["A3L_PriusHelloKitty",50000],
			["IVORY_R8",585000],
			["IVORY_R8SPYDER",386000],
			["Jonzie_Mini_Cooper_R_spec",70000],
			["IVORY_REV",2000000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",9000],
			["C_Kart_01_Blu_F",10500],
			["C_Kart_01_Fuel_F",10500],
			["C_Kart_01_Red_F",10500],
			["C_Kart_01_Vrana_F",10500]
		];
	};
	case "med_shop":
	{
		switch (true) do {
            //EMS Command
            case ((__GETC__(life_mediclevel)) >= 7): {
            	_return = [
				["Jonzie_Ambulance",1750],
            	["Jonzie_AmbulanceExtended",1750],
				["AM_09Tahoe_E_P",1750],
            	["A3L_Stretcher_F",0],
            	["A3L_SuburbanEMS",1500],
            	["A3L_ExplorerEMS_S",1500],
            	["A3L_ExplorerEMS_P",1500],
				["A3L_Charger_EMS",1500],
				["a3l_subaru_ems",1500],
            	["B_MRAP_01_SR",1500],
            	["A3L_CVPILBFD",1500],
				["IVORY_PRIUS",3250],
				["BMW_M5Red",24000]
				//["A3L_Laddertruck",3000],
				//["A3L_AmberLamps",1750],
			];
			};
			//Paramedic
            case ((__GETC__(life_mediclevel)) == 6): {
            	_return = [
				["Jonzie_Ambulance",1750],
            	["Jonzie_AmbulanceExtended",1750],
            	["A3L_Stretcher_F",0],
            	["A3L_SuburbanPara",1500],
            	["A3L_ExplorerEMS_P",1500],
				["A3L_Charger_EMS",1500],
				["a3l_subaru_ems",1500],
            	["B_MRAP_01_SR",1500],
            	["A3L_CVPILBFD",1500],
				["IVORY_PRIUS",3250],
				["BMW_M5Red",24000]
			];
			};
			//S&R Trooper
            case ((__GETC__(life_mediclevel)) == 4): {
            	_return = [
				["Jonzie_Ambulance",1750],
            	["Jonzie_AmbulanceExtended",1750],
            	["A3L_Stretcher_F",0],
            	["A3L_CVPILBFD",1500],
            	["A3L_SuburbanSNR",1500],
            	["B_MRAP_01_SR",1500]
			];
			};
			//Adv. EMT Members
            case ((__GETC__(life_mediclevel)) == 3): {
            	_return = [
				["Jonzie_Ambulance",1750],
            	["Jonzie_AmbulanceExtended",1750],
            	["A3L_Stretcher_F",0],
            	["A3L_SuburbanFP",1500],
            	["A3L_CVPILBFD",1500]
			];
			};
			//EMS Members
            case ((__GETC__(life_mediclevel)) < 3): {
            	_return = [
				["Jonzie_Ambulance",1750],
            	["Jonzie_AmbulanceExtended",1750],
            	["A3L_Stretcher_F",0]
			];
			};
		};
	};
	case "medic_air_hs": {
		_return = [
			["EMS_ORCA",25000],
			["EMS_TARU",25000],
			["EMS_HUMMINGBIRD",25000],
			["EMS_HURON",25000],
			["A3L_EC635_SAR",25000]
		];
	};
	case "exo_car":
	{
		_return = [
			//["A3L_Cooper_concept_blue",45000],
			//["A3L_Cooper_concept_black",45000],
			//["A3L_Cooper_concept_red",45000],
			//kind of broken["A3L_Cooper_concept_white",45000],

			["A3L_RX7_Blue",250000],
			["A3L_RX7_Red",250000],
			["A3L_RX7_White",250000],
			["A3L_RX7_Black",250000],

			// Alfa Romeo
			["A3L_Alfa_Romeo_White",800000],
			["A3L_Alfa_Romeo_Black",800000],
			["A3L_Alfa_Romeo_Red",800000],
			["A3L_Alfa_Romeo_DarkBlue",800000],
			["A3L_Alfa_Romeo_Yellow",800000],
			["A3L_Alfa_Romeo_Pink",800000],
			["A3L_Alfa_Romeo_Grey",800000],
			["A3L_Alfa_Romeo_Purple",800000],
			["A3L_Alfa_Romeo_Orange",800000],

			// Citreon C4
			["A3L_Citreon_C4_White",73600],
			["A3L_Citreon_C4_Black",73600],
			["A3L_Citreon_C4_Red",73600],
			["A3L_Citreon_C4_DarkBlue",73600],
			["A3L_Citreon_C4_Yellow",73600],
			["A3L_Citreon_C4_Pink",73600],
			["A3L_Citreon_C4_Grey",73600],
			["A3L_Citreon_C4_Purple",73600],
			["A3L_Citreon_C4_Orange",73600],

			// Citreon DS3
			["A3L_Citreon_DS3_White",120000],
			["A3L_Citreon_DS3_Black",120000],
			["A3L_Citreon_DS3_Red",120000],
			["A3L_Citreon_DS3_DarkBlue",120000],
			["A3L_Citreon_DS3_Yellow",120000],
			["A3L_Citreon_DS3_Pink",120000],
			["A3L_Citreon_DS3_Grey",120000],
			["A3L_Citreon_DS3_Purple",120000],
			["A3L_Citreon_DS3_Orange",120000],
			
			// Escalade
			["AM_Escalade_Black",450000],
			["AM_Escalade_Blue",450000],
			["AM_Escalade_Green",450000],
			["AM_Escalade_Pink",450000],
			["AM_Escalade_Purple",450000],
			
			
			//["A3L_AMC",65000],
			//["A3L_AMXRed",65000],
			//["A3L_AMXWhite",65000],
			//["A3L_AMXBlue",65000],
			// broken["A3L_AMXGL",65000],
			
			//["A3L_VolvoS60RBlack",65000],
			//broken["A3L_VolvoS60Rred",65000],
			
			//["A3L_EvoXBlack",700000],
			//["A3L_EvoXRed",700000],
			//["A3L_EvoXWhite",700000],

			["S_Vantage_Red",720000],
			["S_Vantage_Blue",720000],
			["S_Vantage_Black",720000],
			["S_Vantage_Yellow",720000],
			["S_Vantage_LightBlue",720000],
			["S_Vantage_Purple",720000],
			["S_Vantage_White",720000],
            ["S_Vantage_Pink",720000],
            ["S_Vantage_DarkBlue",720000],
            ["S_Vantage_DarkRed",720000],
            ["S_Vantage_Burgundy",720000],
            ["S_Vantage_Green",720000],
            ["S_Vantage_Orange",720000],
            ["S_Vantage_Grey",720000],
			
			//piece of hannes
			//["A3L_Ferrari458black",258000],
			//["A3L_Ferrari458white",258000],
			//["A3L_Ferrari458blue",258000],

			["A3L_Panamera_White",950000],
			["A3L_Panamera_Red",950000],
			["A3L_Panamera_Pink",950000],
			["A3L_Panamera_DarkBlue",950000],
			["A3L_Panamera_Black",950000],
			["A3L_Panamera_Yellow",950000],
			["A3L_Panamera_Orange",950000],

			["A3L_S60_White",905000],
			["A3L_S60_Red",905000],
			["A3L_S60_Pink",905000],
			["A3L_S60_DarkBlue",905000],
			["A3L_S60_Black",905000],
			["A3L_S60_Yellow",905000],
			["A3L_S60_Orange",905000],

			["A3L_H1_White",820000],
			["A3L_H1_Red",820000],
			["A3L_H1_Pink",820000],
			["A3L_H1_DarkBlue",820000],
			["A3L_H1_Black",820000],
			["A3L_H1_Yellow",820000],
			["A3L_H1_Orange",820000],

			["A3L_Zonda_White",970000],
			["A3L_Zonda_Red",970000],
			["A3L_Zonda_Pink",970000],
			["A3L_Zonda_DarkBlue",970000],
			["A3L_Zonda_Black",970000],
			["A3L_Zonda_Yellow",970000],
			["A3L_Zonda_Orange",970000],

			["A3L_Mercedes_ML63_White",950000],
			["A3L_Mercedes_ML63_Red",950000],
			["A3L_Mercedes_ML63_Pink",950000],
			["A3L_Mercedes_ML63_DarkBlue",950000],
			["A3L_Mercedes_ML63_Black",950000],
			["A3L_Mercedes_ML63_Yellow",950000],
			["A3L_Mercedes_ML63_Orange",950000],
			
			["Tal_Maserati_Black",1600000],
			["Tal_Maserati_White",1600000],
			["Tal_Maserati_Grey",1600000],
			["Tal_Maserati_Blue",1600000],
			["Tal_Maserati_Green",1600000],
			["Tal_Maserati_LightBlue",1600000],
			["Tal_Maserati_Lime",1600000],
			["Tal_Maserati_Purple",1600000],
			["Tal_Maserati_Pink",1600000],
			["Tal_Maserati_Red",1600000],
			["Tal_Maserati_Orange",1600000],
			["Tal_Maserati_Yellow",1600000],
			

			["A3L_Audi_RS4_White",910000],
			["A3L_Audi_RS4_Black",910000],
			["A3L_Audi_RS4_DarkBlue",910000],
			["A3L_Audi_RS4_Red",910000],
			["A3L_Audi_RS4_Yellow",910000],
			["A3L_Audi_RS4_Pink",910000],
			["A3L_Audi_RS4_Grey",910000],
			["A3L_Audi_RS4_Purple",910000],
			["A3L_Audi_RS4_orange",910000],

			["S_McLarenP1_Black",900000],
			["S_McLarenP1_Blue",900000],
			["S_McLarenP1_Orange",900000],
			["S_McLarenP1_White",900000],
			["S_McLarenP1_Yellow",900000],
			["S_McLarenP1_Silver",900000],
			
			["A3L_Veyron",1000000],
			["A3L_Veyron_black",1000000],
			["A3L_Veyron_red",1000000],
			["A3L_Veyron_white",1000000],
			["A3L_Veyron_orange",1000000],
			["A3L_Veyron_darkred",1000000],
			["A3L_Veyron_silver",1000000],
			["A3L_Veyron_darkblue",1000000],
			["A3L_Veyron_green",1000000],
			["A3L_Veyron_grey",1000000],
			["A3L_Veyron_pink",1000000],
			["A3L_Veyron_burgundy",1000000],
			["A3L_Veyron_purple",1000000],
			
			["A3L_Subaru_WRX_Red",916000],
			["A3L_Subaru_WRX_Black",916000],
			["A3L_Subaru_WRX_DarkBlue",916000],
			["A3L_Subaru_WRX_Yellow",916000],
			["A3L_Subaru_WRX_Pink",916000],
			["A3L_Subaru_WRX_Grey",916000],
			["A3L_Subaru_WRX_Purple",916000],
			["A3L_Subaru_WRX_Orange",916000]
			
		];
	};
	//New Shops
	// Knoxville - Nissan
	case "nissan_car":
	{
		_return = [
			["S_Skyline_Red",600000],
			["S_Skyline_Blue",600000],
			["S_Skyline_Black",600000],
			["S_Skyline_Yellow",600000],
			["S_Skyline_Purple",600000],
			["S_Skyline_White",600000],
			
			["Nissan_GTR_White",960000],
			["Nissan_GTR_Black",960000],
			["Nissan_GTR_DarkBlue",960000],
			["Nissan_GTR_Red",960000],
			["Nissan_GTR_Green",960000]
		
		];
	};
	case "jeep_car":
	{
		_return = [
			["A3L_JeepWhiteBlack",40750],
			["A3L_JeepGreenBlack",40750],
			["A3L_JeepRedTan",40750],
			["A3L_JeepRedBlack",40750],
			["A3L_JeepGrayBlack",40750],
			
			["A3L_Jeep_Cherokeee_Black",65600],
			["A3L_Jeep_Cherokee_BlackMatte",65600],
			["A3L_Jeep_Cherokee_DarkBlue",65600],
			["A3L_Jeep_Cherokee_DarkBlueMatte",65600],
			["A3L_Jeep_Cherokee_White",65600],
			["A3L_Jeep_Cherokee_WhiteMatte",65600],
			["A3L_Jeep_Cherokee_Purple",65600],
			["A3L_Jeep_Cherokee_PurpleMatte",65600]
			
		];
	};
	case "mitsubishi_car":
	{
		_return = [
			["A3L_EvoX_Red",700000],
			["A3L_EvoX_Black",700000],
			["A3L_EvoX_DarkBlue",700000],
			["A3L_EvoX_Green",700000],
			["A3L_EvoX_Yellow",700000],
			["A3L_EvoX_Pink",700000],
			["A3L_EvoX_Grey",700000],
			["A3L_EvoX_Purple",700000],
			["A3L_EvoX_White",700000],
			["A3L_EvoX_Orange",700000]
			
		];
	};
	case "volkswagen_car":
	{
		_return = [
			["A3L_GolfVI_Red",33600],
			["A3L_GolfVI_Black",33600],
			["A3L_GolfVI_DarkBlue",33600],
			["A3L_GolfVI_Yellow",33600],
			["A3L_GolfVI_Pink",33600],
			["A3L_GolfVI_Grey",33600],
			["A3L_GolfVI_Purple",33600],
			["A3L_GolfVI_Orange",33600],
			
			["A3L_Touareg_Red",65600],
			["A3L_Touareg_Black",65600],
			["A3L_Touareg_DarkBlue",65600],
			["A3L_Touareg_White",65600],
			["A3L_Touareg_Yellow",65600],
			["A3L_Touareg_Pink",65600],
			["A3L_Touareg_Grey",65600],
			["A3L_Touareg_Purple",65600],
			["A3L_Touareg_Orange",65600]
			
		];
	};
	case "peugeot_car":
	{
		_return = [
			["A3L_Peugeot_207_Red",96000],
			["A3L_Peugeot_207_Black",96000],
			["A3L_Peugeot_207_DarkBlue",96000],
			["A3L_Peugeot_207_Yellow",96000],
			["A3L_Peugeot_207_Pink",96000],
			["A3L_Peugeot_207_Grey",96000],
			["A3L_Peugeot_207_Purple",96000],
			["A3L_Peugeot_207_Orange",96000],	
			
			["A3L_Peugeot_308_RCZ_Red",256000],
			["A3L_Peugeot_308_RCZ_Black",256000],
			["A3L_Peugeot_308_RCZ_DarkBlue",256000],
			["A3L_Peugeot_308_RCZ_Yellow",256000],
			["A3L_Peugeot_308_RCZ_Pink",256000],
			["A3L_Peugeot_308_RCZ_Grey",256000],
			["A3L_Peugeot_308_RCZ_Orange",256000]
			
		];
	};
	case "bmw_car":
	{
		_return = [
		
			["max_BMW_M3_GTR1",700000],
			
			["BMW_M5Blue",885000],
			["BMW_M5Red",885000],
			["BMW_M5White",885000],
			["BMW_M5Black",885000],
            ["BMW_M5Orange",885000],
            ["BMW_M5Pink",885000],
            ["BMW_M5DarkBlue",885000],
            ["BMW_M5DarkRed",885000],
            ["BMW_M5Burgundy",885000],
            ["BMW_M5Purple",885000],
            ["BMW_M5Grey",885000],
            ["BMW_M5Green",885000],
			
			["A3L_BMW_M6_Grey",960000],
			["A3L_BMW_M6_Yellow",960000],
			["A3L_BMW_M6_Orange",960000],
			["A3L_BMW_M6_Red",960000],
			["A3L_BMW_M6_Black",960000],
			["A3L_BMW_M6_DarkBlue",960000],
			["A3L_BMW_M6_Purple",960000],
			["A3L_BMW_M6_Pink",960000],
			["A3L_BMW_M6_White",960000]
		];
	};
	case "chev_car":
	{
		_return = [
			["A3L_SuburbanWhite",50000],
			["A3L_SuburbanBlue",50000],
			["A3L_SuburbanRed",50000],
			["A3L_SuburbanBlack",50000],
			["A3L_SuburbanGrey",50000],
			["A3L_SuburbanOrange",50000]
			
			//["A3L_Camaro",150000] takes money no return.
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_FordKaBlue",26000],
			["A3L_FordKaRed",26000],
			["A3L_FordKaBlack",26000],
			["A3L_FordKaWhite",26000],
			["A3L_FordKaGrey",26000],
			
			["A3L_CVWhite",46500],
			["A3L_CVBlack",46500],
			["A3L_CVGrey",46500],
			["A3L_CVRed",46500],
			["A3L_CVPink",46500],
			["A3L_CVBlue",46500],
			
			["A3L_TaurusBlack",57500],
			["A3L_TaurusBlue",57500],
			["A3L_TaurusRed",57500],
			["A3L_TaurusWhite",57500],
			["A3L_TaurusGrey",57500],
			
			["A3L_Ford_Mustang_Red",960000],
			["A3L_Ford_Mustang_Black",960000],
			["A3L_Ford_Mustang_DarkBlue",960000],
			["A3L_Ford_Mustang_Yellow",960000],
			["A3L_Ford_Mustang_Pink",960000],
			["A3L_Ford_Mustang_Grey",960000],
			["A3L_Ford_Mustang_Purple",960000],
			["A3L_Ford_Mustang_Orange",960000],
			["A3L_Ford_Mustang_White",960000],
			
			["A3L_Ford_Raptor_White",76800],
			["A3L_Ford_Raptor_Black",76800],
			["A3L_Ford_Raptor_DarkBlue",76800],
			["A3L_Ford_Raptor_Red",76800],
			["A3L_Ford_Raptor_Yellow",76800],
			["A3L_Ford_Raptor_Pink",76800],
			["A3L_Ford_Raptor_Grey",76800],
			["A3L_Ford_Raptor_Purple",76800],
			["A3L_Ford_Raptor_Orange",76800]

		];
	};
	case "dodge_car":
	{
		_return =
		[

			["A3L_GrandCaravan",25000],
			["A3L_GrandCaravanBlk",25000],
			["A3L_GrandCaravanBlue",25000],
			["A3L_GrandCaravanGreen",25000],
			["A3L_GrandCaravanRed",25000],
			["A3L_GrandCaravanPurple",25000],
			
			["A3L_Challenger",400000],
			["A3L_ChallengerGreen",400000],
			["A3L_ChallengerRed",400000],
			["A3L_ChallengerWhite",400000],
			["A3L_ChallengerBlack",400000],
			["A3L_ChallengerBlue",400000],
			
			["AM_2015C_White",710000],
			["AM_2015C_Black",710000],
			["AM_2015C_Red",710000],
			["AM_2015C_blue",710000],
			["AM_2015C_Green",710000],
			
			["A3L_ChargerGrey",450000],
			["A3L_ChargerBlack",450000],
			["A3L_ChargerBlue",450000],
			["A3L_ChargerRed",450000],
			["A3L_ChargerWhite",450000],
			
			//["A3L_ChargerBlack",450000],
			//["A3L_ChargerWhit",450000],
			//["A3L_ChargerCstm",450000],
			["Jonzie_Viper",1850000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["Jonzie_Mini_Cooper",7500],
			
			["B_Quadbike_01_F",10000],
			
			["A3L_Escort",8000],
			["A3L_EscortTaxi",8000],
			["A3L_EscortBlack",8000],
			["A3L_EscortBlue",8000],
			["A3L_EscortWhite",8000],
			["A3L_EscortPink",8000],
			
			["A3L_PuntoRed",9000],
			["A3L_PuntoBlack",9000],
			["A3L_PuntoWhite",9000],
			["A3L_PuntoGrey",9000],
			
			["A3L_RegalBlack",12000],
			["A3L_RegalBlue",12000],
			["A3L_RegalOrange",12000],
			["A3L_RegalRed",12000],
			["A3L_RegalWhite",12000],
			
			["S_Rangerover_Black",55500],
			["S_Rangerover_Red",55500],
			["S_Rangerover_Blue",55500],
			["S_Rangerover_Green",55500],
			["S_Rangerover_Purple",55500],
			["S_Rangerover_Grey",55500],
			["S_Rangerover_Orange",55500],
			["S_Rangerover_White",55500],
			
			["A3L_Lincoln_Red",70800],
			["A3L_Lincoln_Black",70800],
			["A3L_Lincoln_DarkBlue",70800],
			["A3L_Lincoln_Yellow",70800],
			["A3L_Lincoln_Pink",70800],
			["A3L_Lincoln_Grey",70800],
			["A3L_Lincoln_Purple",70800],
			["A3L_Lincoln_Orange",70800],
			
			["A3L_Smartcar_Red",26000],
			["A3L_Smartcar_Black",26000],
			["A3L_Smartcar_Blue",26000]
			
		];
	};
	case "civ_truck":
	{
		_return =
		[
			["A3L_Hyster60",15220],
			
			["A3L_F350Black",20500],
			["A3L_F350Blue",20500],
			["A3L_F350Red",20500],
			["A3L_F350White",20500],
			
			["A3L_Dumptruck",288000],
			
			["C_Van_01_box_F",96000],
			["C_Van_01_transport_F",65000],
			
			["A3L_Bus",446400],
			
			["A3L_Towtruck_black",45000],
			["A3L_Towtruck_blue",45000],
			["A3L_Towtruck_green",45000],
			["A3L_Towtruck_orange",45000],
			["A3L_Towtruck_red",45000],
			["A3L_Towtruck_yellow",45000],
			["Jonzie_Tow_Truck",128000],
			
			["A3L_GMC_Van_White",120000],
			["A3L_GMC_Van_Black",120000],
			["A3L_GMC_Van_DarkBlue",120000],
			["A3L_GMC_Van_Red",120000],
			["A3L_GMC_Van_Yellow",120000],
			["A3L_GMC_Van_Pink",120000],
			["A3L_GMC_Van_Grey",120000],
			["A3L_GMC_Van_Purple",120000],
			["A3L_GMC_Van_Orange",120000],
			
			["A3L_GMC_Van_Clothing",160000],
			["A3L_GMC_Van_Food",160000],
			["A3L_GMC_Van_General",160000],
			
			["A3L_Renault_Magnum",628000],
			["Jonzie_Western",1328000],
			["Jonzie_Superliner",1828000],
			["Jonzie_Curtain",300000],
			
			["wirk_h3_limo",512000],
			["Nhz_audia8limo",512000]
			
			
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",25000],
			["B_Heli_Light_01_F",1550000]
		];

	};
	case "cop_car":
        {
             _return =
            [
                    ["A3L_Bicycle",200],
                    ["A3L_OldBike",300],
						
					["A3L_CVPI_Sheriff_Slick",1500],
					["A3L_CVPI_Sheriff_LB",1500],
					["A3L_CVPI_Corrections_Slick",1500],
					["A3L_CVPI_Corrections_LB",1500],
					["A3L_CVPIUC_Black",3000],
					["A3L_CVPIUC_Blue",3000],
					["A3L_CVPIUC_Grey",3000],
					["A3L_CVPIUC_Red",3000],
					["A3L_CVPIUC_White",3000],
					["A3L_CVPIUC_Pink",3000],
						
					["A3L_Taurus_Sheriff_Slick",2000],
					["A3L_Taurus_Sheriff_LB",2000],
					["A3L_Taurus_Corrections_Slick",2000],
					["A3L_Taurus_Corrections_LB",2000],
					["A3L_TaurusUC_Black",4000],
					["A3L_TaurusUC_White",4000],
					["A3L_TaurusUC_Grey",4000],
					["A3L_TaurusUC_Blue",4000],
					["A3L_TaurusUC_Red",4000],
					
					["AM_09Tahoe_P_P",4000],
					["AM_09Tahoe_U_T",4000],
					
					["AM_10Fusion_P_P",4000],
						
					//["A3L_Charger_Sheriff_LB",6800],
					//["A3L_ChargerPoliceLB",6000],
					["A3L_Charger_HWP",9350],
					["DAR_ChargerPoliceHWPSLI",9350],
					["DAR_ChargerPoliceLB",9350],
					["A3L_Charger_SERT",10000],
					["A3L_Charger_SERTWhiteShadow",12000],
					["A3L_Charger_SERTBlackShadow",12000],
					["A3L_ChargerUC_Black_New",8000],
					["A3L_ChargerUC_White_New",8000],
					["A3L_ChargerUC_Blue_New",8000],
					//["A3L_ChargerUC_Black",8000],
					//["A3L_ChargerUC_White",8000],
						
					["A3L_SuburbanSO",4000],
					["A3L_SuburbanSERT",4000],
					["A3L_SuburbanDOC",4000],
						
					["A3L_Subaru_HWP_Interceptor",3500],
					["DAR_ImpalaUM",7000],
					["DAR_ExplorerPolice",6000],
					["DAR_ExplorerHWPSLI",6000],
						
					["AM_Escalade_SERT",30000],
					["A3L_jailBus",80250]                  
 
                ];
        };

	case "dtu_car":
        {
                _return =
                [
						["A3L_F350Black",15000],
						["A3L_F350Blue",15000],
						["A3L_F350Red",15000],
						["A3L_F350White",15000],
						["A3L_Towtruck",15000],
						["A3L_EscortBlue",15000],
						["A3L_Jeep_Cherokee_Black",15000],
						["A3L_Jeep_Cherokee_DarkBlue",15000],
						["A3L_Jeep_Cherokee_White",15000],
						["A3L_Jeep_Cherokee_Purple",15000],
						["A3L_Jeep_Cherokee_Red",15000],
						["A3L_EvoX_Red",30000],
						["A3L_EvoX_Black",30000],
						["A3L_EvoX_DarkBlue",30000],
						["A3L_EvoX_Purple",30000],
						["A3L_EvoX_White",30000],
						["A3L_EvoX_Orange",30000],
						["A3L_BMW_M6_Black",30000],
						["A3L_BMW_M6_Red",30000],
						["A3L_BMW_M6_Orange",30000],
						["A3L_BMW_M6_White",30000],
						["A3L_BMW_M6_Purple",30000],
						["A3L_BMW_M6_Pink",30000],
						["A3L_BMW_M6_Darkblue",30000],
						["S_Vantage_Red",30000],
						["S_Vantage_Blue",30000],
						["S_Vantage_Black",30000],
						["A3L_Ford_Mustang_Red",30000],
						["A3L_Ford_Mustang_Black",30000],
						["A3L_Ford_Mustang_Orange",30000],
						["A3L_Ford_Mustang_White",30000],
						["A3L_Ford_Mustang_Purple",30000],
						["A3L_Ford_Raptor_White",30000],
						["A3L_Ford_Raptor_Black",30000],
						["A3L_Ford_Raptor_DarkBlue",30000],
						["A3L_Ford_Raptor_Red",30000],
						["A3L_Ford_Raptor_Orange",30000],
						["A3L_Ford_Raptor_Purple",30000],
						["A3L_GMC_Van_White",30000],
						["A3L_GMC_Van_Black",30000],
						["A3L_GMC_Van_Red",30000],
						["A3L_GMC_Van_Purple",30000],
						["A3L_GMC_Van_Orange",30000],
						["A3L_GMC_Van_Pink",30000],
						["A3L_GMC_Van_Clothing",50000],
						["A3L_GMC_Van_Food",50000],
						["A3L_GMC_Van_General",50000],
						["A3L_GolfVI_Red",30000],
						["A3L_GolfVI_Black",30000],
						["A3L_GolfVI_DarkBlue",30000],
						["A3L_GolfVI_Pink",30000],
						["A3L_GolfVI_Purple",30000],
						["A3L_GolfVI_Orange",30000],
						["A3L_Touareg_Red",30000],
						["A3L_Touareg_Black",30000],
						["A3L_Touareg_DarkBlue",30000],
						["A3L_Touareg_White",30000],
						["A3L_Touareg_Pink",30000],
						["A3L_Touareg_Purple",30000],
						["A3L_Touareg_Orange",30000],
						["A3L_Lincoln_Red",15000],
						["A3L_Lincoln_Black",15000],
						["A3L_Lincoln_DarkBlue",15000],
						["A3L_Lincoln_Purple",15000],
						["A3L_Lincoln_Orange",15000],
						["A3L_Smartcar_Red",15000],
						["A3L_Smartcar_Black",15000],
						["A3L_Smartcar_Blue",15000],
						["A3L_Taurus",15000],
						["A3L_TaurusBlack",15000],
						["A3L_TaurusBlue",15000],
						["A3L_TaurusRed",15000],
						["A3L_TaurusWhite",15000],
						["A3L_Subaru_WRX_Red",30000],
						["A3L_Subaru_WRX_Black",30000],
						["A3L_Subaru_WRX_DarkBlue",30000],
						["A3L_Subaru_WRX_Orange",30000],
						["A3L_Subaru_WRX_Purple",30000],
						["Nissan_GTR_White",30000],
						["Nissan_GTR_Black",30000],
						["Nissan_GTR_DarkBlue",30000],
						["Nissan_GTR_Red",30000],
						["Nissan_GTR_Green",30000],
						["A3L_Peugeot_308_RCZ_Red",30000],
						["A3L_Peugeot_308_RCZ_Black",300004],
						["AA3L_Peugeot_308_RCZ_DarkBlue",30000],
						["A3L_Peugeot_308_RCZ_Yellow",30000],
						["A3L_Peugeot_308_RCZ_Purple",30000],
						["A3L_Peugeot_308_RCZ_Orange",30000],
						["Peugeot_207_Red",30000],
						["Peugeot_207_Black",30000],
						["Peugeot_207_Orange",30000],
						["Peugeot_207_Purple",30000],
						["Peugeot_207_Pink",30000],
						["A3L_RegalBlack",15000],
						["A3L_RegalBlue",15000],
						["A3L_RegalOrange",15000],
						["A3L_RegalRed",15000],
						["A3L_RegalWhite",15000],
						["wirk_h3_limo",30000],
						["Nhz_audia8limo",30000],
						["A3L_Dumptruck",30000],
						["A3L_Renault_Magnum",30000],
						["Jonzie_Mini_Cooper",15000],
						["S_Rangerover_Black",15000],
						["S_Rangerover_Red",15000],
						["S_Rangerover_Blue",15000],
						["S_Rangerover_Green",15000],
						["S_Rangerover_Purple",15000],
						["S_Rangerover_Grey",15000],
						["S_Rangerover_Orange",15000],
						["S_Rangerover_White",15000],
						["AM_2015C_White",30000],
						["AM_2015C_Black",30000],
						["AM_2015C_Red",30000],
						["AM_2015C_blue",30000],
						["AM_2015C_Green",30000],                      
						["BMW_M5Blue",30000],
						["BMW_M5Red",30000],
						["BMW_M5White",30000],
						["BMW_M5Black",30000],
						["A3L_PriusHelloKitty",15000],     
						["A3L_Mercedes_ML63_White",30000],
						["A3L_Mercedes_ML63_Red",30000],
						["A3L_Mercedes_ML63_Pink",30000],
						["A3L_Mercedes_ML63_DarkBlue",30000],
						["A3L_Mercedes_ML63_Black",300000],
						["A3L_Mercedes_ML63_Yellow",30000],
						["A3L_Mercedes_ML63_Orange",30000],
						["AM_Escalade_Black",30000],
						["AM_Escalade_Blue",30000],
						["AM_Escalade_Green",30000],
						["AM_Escalade_Pink",30000],
						["AM_Escalade_Purple",30000]
                ];
        };

			
		
	case "civ_air":
	{
		_return =
		[
			//["IVORY_T6A_1",300000],
			["C_Heli_Light_01_civil_F",1000000],
			["ivory_b206",1000000],
			["ivory_b206_news",1200000],
			//["IVORY_BELL512",200000],
			["O_Heli_Light_02_unarmed_F",1000000],
			["IVORY_CRJ200_1",5500000],
			["IVORY_ERJ135_1",7500000],
			["IVORY_YAK42D_1",7500000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",5500],
			["C_Heli_Light_01_civil_F",5500],
			["O_Heli_Light_02_unarmed_F",5500],
			["IVORY_BELL512_POLICE",10000],
			["I_Heli_Transport_02_F",20000],
			["I_Heli_light_03_unarmed_F",25000],
			["B_Heli_Transport_01_F",25000],
			["B_Heli_Transport_03_unarmed_F",27500],
			["O_Heli_Transport_04_F",27500],
			["O_Heli_Transport_04_covered_F",28000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",6000],
			["B_Heli_Light_01_F",5500],
			["C_Heli_Light_01_civil_F",5500],
			["O_Heli_Light_02_unarmed_F",5500],
			["IVORY_BELL512_POLICE",10000],
			["I_Heli_Transport_02_F",20000],
			["I_Heli_light_03_unarmed_F",25000],
			["B_Heli_Transport_01_F",25000],
			["B_Heli_Transport_03_unarmed_F",27500],
			["O_Heli_Transport_04_F",27500],
			["O_Heli_Transport_04_covered_F",28000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",35000],
			["C_Boat_Civil_01_F",75000],
			["A3L_JetSki",75000],
			["A3L_JetSki_Yellow",75000],
			["A3L_Ship",1200000]
			
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",4500],
			["B_SDV_01_F",7500]
		];
	};
	case "ems_ship":
	{
		_return =
		[
			["C_Boat_Civil_01_F",3500],
			["B_Boat_Transport_01_F",3000],
			["C_Rubberboat",2000],
			["A3L_Ship",400000]		
		];
	};
};

_return;