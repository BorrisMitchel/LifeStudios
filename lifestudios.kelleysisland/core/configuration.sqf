#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_earplugsActive = false;
life_spikestrip = ObjNull;
life_respawn_timer = 10; //Scaled in minutes
if (side player == independent) then {life_respawn_timer = 2;};
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,4500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,150000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,100000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_intox = 0.00;
__CONST__(life_paycheck_period,5); //10 minutes
life_cash = 0;
__CONST__(life_impound_car,250);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,250);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 45000; //Starting Bank Money
		life_paycheck = 3500;	
	};
	case civilian: 
	{
		life_atmcash = 15000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
	
	case independent: 
	{
		life_atmcash = 60000;
		life_paycheck = 4000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	//"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_earplugs",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	//"life_inv_copperore",
	//"life_inv_ironore",
	"life_inv_ironr",
	//"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	//"life_inv_diamond",
	//"life_inv_coke",
	//"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	//"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_batterypack",
	"life_inv_blindfold",
	"life_inv_zipties",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_normalrock",
	"life_inv_ironrock",
	"life_inv_coalrock",
	"life_inv_diamondrock",
	"life_inv_paperlog",
	"life_inv_olivelog",
	"life_inv_ficuslog",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	//Additions
	"life_inv_zoobeer", // Duff Beer
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_tobacco",
	"life_inv_cigarette",
	"life_inv_kidney",
	"life_inv_raxsrum",
	"life_inv_grantdriverlicence",
	"life_inv_grantgunlicence",		
	"life_inv_repairkit"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses ["license_var", "civ"/"cop"]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_fcl","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_fsl","civ"], // adding new license for Civilians' to sell weapons legally 
	
	["license_civ_rifle","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

// not used anymore life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = 
[
	["turtle",1800],
	["turtlesoup",100],
	//["heroinu",1200],
	//["cocaine",1500],
	//["cocainep",3500],
	["spikeStrip",250],
	["blindfold",500],
	["zipties",500],
	["turtle",1000],
	["blastingcharge",10000],
	["boltcutter",1500],
	["opium seed",500],
	["opium", 1200],
	["heroinp",2500],
	["cannabis seed",500],
	["cannabis",1000],
	["marijuana",2000]
];


/*
	Sell / buy arrays
*/
sell_array = 
[
	//Unused
	//["heroinu",50],
	//["oilp",3200],
	//["cocaine",85],
	//["cocainep",205],
	//["diamond",2000],
	//["diamondc",2500],
	//["iron_r",3200],
	//["copper_r",1500],
	//["cement",1950],
	//["goldbar",95000], 
	
	//Civilian Market
	["Earplugs", 30],
	["repair kit",3500],
	["apple",10],
	["rabbit",15],
	["water",10],
	["coffee",14],
	["donuts",20],
	["tbacon",20],
	["lockpick",45],
	["blindfold",1000],
	["zipties",1000],
	["pickaxe",750],
	["redgull",20],
	["peach",12],
	["fuelF",24],
	["batterypack",50],
	
	//Farmers Market
	["wheat seed",15],
	["sunflower seed",15],
	["corn seed",15],
	["bean seed",15],
	["cotton seed",15],
	["olive seed",15],
	["pumpkin seed",37],
	["wheat",45],
	["sunflower",15],
	["corn",326],
	["bean",700],
	["cotton",950],
	["olive",1080],
	["pumpkin",1100],
	
	//Drug Dealer
	["opium seed",50],
	["cannabis seed",37],
	// ["opium",1080],
	// ["cannabis",2705],
	["marijuana",3150],
	["heroinp",5850],
	
	//Wong Kitchen
	["turtle",1800],
	["turtlesoup",100],
	
	//Fishing Market
	["salema",1100],
	["ornate",1200],
	["mackerel",1400],
	["tuna",1400],
	["mullet",1400],
	["catshark",1400],
	
	//Refined Salt/Glass
	["salt_r",1650],
	["glass",1850],
	
	//Resource Exporter
	//Tree Mines
	["paperlog",2605],
	["olivelog",2605],
	["ficuslog",2605],
	//Ore Mines
	["normalrock",2005],
	["ironrock",3505],
	["coalrock",5005],
	["diamondrock",7005],
	
	//Hunting Store Items
	["raw goat meat",4520],
	["raw chicken",5000],
	["raw sheep meat",3540],
	["raw rabbit",5520],
	
	//Intoxicating Items
	["zoobeer",20], 
	["cigarette",24],
	["Rax's Rum",37],
	
	//Cop Store Items
	["spikeStrip",200],
	["BarGate",60],
	["RoadBlockConc",120],
	["RoadBlockWood",160],
	["RoadCone",68],
	["RoadConeStrip",88],
	["RoadConeB",72],
	["grantdriverlicence",11],
	["grantgunlicence",11],
	["RoadConeStripB",140]

];
__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",30],
	["rabbit",40],
	["salema",1400],
	["ornate",1400],
	["mackerel",1400],
	["tuna",1400],
	["mullet",1400],
	["catshark",1400],
	["water",30],
	["turtlesoup",200],
	["donuts",40],
	["coffee",30],
	["tbacon",40],
	["lockpick",150],
	["blindfold",5000],
	["zipties",5000],
	["pickaxe",1200],
	["redgull",75],
	["fuelF",50],
	["Earplugs", 50],
	["repair kit",8000],
	["batterypack",200],
	["wheat",54],
	["sunflower",47],
	["corn",772],
	["bean",883],
	["cotton",1254],
	["olive",1180],
	["cannabis",6162],
	["pumpkin",2162],
	
	["wheat seed",30],
	["sunflower seed",30],
	["corn seed",30],
	["bean seed",30],
	["cotton seed",30],
	["olive seed",40],
	["pumpkin seed",40],
	["opium seed",90],
	["cannabis seed",90],
	
	
	["raw goat meat",6520],
	["raw chicken",6000],
	["raw sheep meat",6540],
	["raw rabbit",6520],
	
	["normalrock",3005],
	["ironrock",4505],
	["coalrock",5005],
	["diamondrock",8005],
	["paperlog",3605],
	["olivelog",3605],
	["ficuslog",3605],
	
	["peach",25],
	["spikeStrip",250],
	["blastingcharge",300000],
	["boltcutter",7500],
	["defusekit",9000],
	["storagesmall",100000],
	["storagebig",500000],

	// Deo's Adds
	["zoobeer",40],
	["BarGate",75],
	["RoadBlockConc",150],
	["RoadBlockWood",200],
	["RoadCone",85],
	["RoadConeStrip",110],
	["RoadConeB",90],
	["RoadConeStripB",175],
	["cigarette",30],
	["grantdriverlicence",11],
	["grantgunlicence",11],
	["Rax's Rum",75]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",1],
	["hgun_P07_snds_F",1],
	["hgun_P07_F",1],
	["ItemGPS",5],
	["ToolKit",50],
	["FirstAidKit",5],
	["Medikit",10],
	["NVGoggles",50],
	["16Rnd_9x21_Mag",5],
	["20Rnd_556x45_UW_mag",5],
	["ItemMap",5],
	["ItemCompass",5],
	["Chemlight_blue",5],
	["Chemlight_yellow",5],
	["Chemlight_green",5],
	["Chemlight_red",5],
	["hgun_Rook40_F",5],
	["arifle_Katiba_F",50],
	["30Rnd_556x45_Stanag",5],
	["20Rnd_762x51_Mag",5],
	["30Rnd_65x39_caseless_green",5],
	["DemoCharge_Remote_Mag",5],
	["SLAMDirectionalMine_Wire_Mag",5],
	["optic_ACO_grn",5],
	["acc_flashlight",5],
	["srifle_EBR_F",5],
	["arifle_TRG21_F",5],
	["optic_MRCO",5],
	["optic_Aco",5],
	["arifle_MX_F",5],
	["arifle_MXC_F",5],
	["arifle_MXM_F",5],
	["MineDetector",5],
	["optic_Holosight",5],
	["acc_pointer_IR",5],
	["arifle_TRG20_F",5],
	["SMG_01_F",5],
	["arifle_Mk20C_F",5],
	["30Rnd_45ACP_Mag_SMG_01",5],
	["30Rnd_9x21_Mag",5]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_Quadbike_01_F",0],
	["A3L_M3",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",0],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",0],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["A3L_Bus",0],
	["A3L_Karts",0],
	["A3L_AmberLamps",0],
	["A3L_Laddertruck",0],
	["A3L_Cooper_concept_blue",0],
	["A3L_Cooper_concept_black",0],
	["A3L_Cooper_concept_red",0],
	["A3L_Cooper_concept_white",0],
	["A3L_AMC",0],
	["A3L_AMXRed",0],
	["A3L_AMXWhite",0],
	["A3L_AMXBlue",0],
	["A3L_AMXGL",0],
	["A3L_VolvoS60RBlack",0],
	["A3L_VolvoS60Rred",0],
	["S_Skyline_Red",0],
	["S_Skyline_Blue",0],
	["S_Skyline_Black",0],
	["S_Skyline_Yellow",0],
	["S_Skyline_Purple",0],
	["S_Skyline_White",0],
	["S_Vantage_Red",0],
	["S_Vantage_Blue",0],
	["S_Vantage_Black",0],
	["S_Vantage_Yellow",0],
	["S_Vantage_LightBlue",0],
	["S_Vantage_Purple",0],
	["S_Vantage_White",0],	
	["A3L_Ferrari458black",0],
	["A3L_Ferrari458white",0],
	["A3L_Ferrari458blue",0],
	["A3L_SuburbanWhite",0],
	["A3L_SuburbanBlue",0],
	["A3L_SuburbanRed",0],
	["A3L_SuburbanBlack",0],
	["A3L_SuburbanGrey",0],
	["A3L_SuburbanOrange",0],
	["A3L_TahoeWhite",0],
	["A3L_TahoeRed",0],
	["A3L_TahoeBlue",0],
	["A3L_Camaro",0],
	["A3L_FordKaBlue",0],
	["A3L_FordKaRed",0],
	["A3L_FordKaBlack",0],
	["A3L_FordKaWhite",0],
	["A3L_FordKaGrey",0],
	["A3L_CVWhite",0],
	["A3L_CVBlack",0],
	["A3L_CVGrey",0],
	["A3L_CVRed",0],
	["A3L_CVPink",0],
	["A3L_CVBlue",0],	
	["A3L_Taurus",0],
	["A3L_TaurusBlack",0],
	["A3L_TaurusBlue",0],
	["A3L_TaurusRed",0],
	["A3L_TaurusWhite",0],
	["A3L_GrandCaravan",0],
	["A3L_GrandCaravanBlk",0],
	["A3L_GrandCaravanBlue",0],
	["A3L_GrandCaravanGreen",0],
	["A3L_GrandCaravanRed",0],
	["A3L_GrandCaravanPurple",0],
	["A3L_Challenger",0],
	["A3L_ChallengerGreen",0],
	["A3L_ChallengerRed",0],
	["A3L_ChallengerWhite",0],
	["A3L_ChallengerBlack",0],
	["A3L_ChallengerBlue",0],
	["A3L_ChargerBlack",0],
	["A3L_ChargerWhit",0],
	["A3L_ChargerCstm",0],
	["Jonzie_Viper",0],
	["A3L_Escort",0],
	["A3L_EscortTaxi",0],
	["A3L_EscortBlack",0],
	["A3L_EscortBlue",0],
	["A3L_EscortWhite",0],
	["A3L_EscortPink",0],
	["A3L_PuntoRed",0],
	["A3L_PuntoBlack",0],
	["A3L_PuntoWhite",0],
	["A3L_PuntoGrey",0],
	["A3L_RegalBlack",0],
	["A3L_RegalBlue",0],
	["A3L_RegalOrange",0],
	["A3L_RegalRed",0],
	["A3L_RegalWhite",0],
	["A3L_JeepWhiteBlack",0],
	["A3L_JeepGreenBlack",0],
	["A3L_JeepRedTan",0],
	["A3L_JeepRedBlack",0],
	["A3L_JeepGrayBlack",0],
	["A3L_VolksWagenGolfGTired",0],
	["A3L_VolksWagenGolfGTiblack",0],
	["A3L_VolksWagenGolfGTiblue",0],
	["A3L_VolksWagenGolfGTiwhite",0],
	["A3L_F350Black",0],
	["A3L_F350Blue",0],
	["A3L_F350Red",0],
	["A3L_F350White",0],
	["A3L_Dumptruck",0],
	["C_Van_01_box_F",0],
	["C_Van_01_transport_F",0],
	["A3L_GrandCaravanUC",0],
	["A3L_GrandCaravanUCBlack",0],
	["A3L_TaurusFPBLBPD",0],
	["A3L_TaurusFPBLBCSO",0],
	["A3L_TaurusFPBPD",0],
	["A3L_TaurusFPBPDGM",0],
	["A3L_TaurusFPBCSO",0],
	["A3L_TaurusUCBlack",0],
	["A3L_TaurusUCGrey",0],
	["A3L_TaurusUCWhite",0],
	["A3L_TaurusUCBlue",0],
	["A3L_TaurusUCRed",0],
	["S_Rangerover_Black",0],
	["S_Rangerover_Red",0],
	["S_Rangerover_Blue",0],
	["S_Rangerover_Green",0],
	["S_Rangerover_Purple",0],
	["S_Rangerover_Grey",0],
	["S_Rangerover_Orange",0],
	["S_Rangerover_White",0],
	["A3L_CVPIUC",0],
	["A3L_CVPIUCWhite",0],
	["A3L_CVPIUCBlack",0],
	["A3L_CVPIGrey",0],
	["A3L_CVPIUCRed",0],
	["A3L_CVPIUCPink",0],	
	["A3L_CVPIUCBlue",0],
	["A3L_ChargerUC",0],
	["A3L_ChargerUCWhite",0],	
	["A3L_CVPIFPBPD",0],
	["A3L_CVPIFPBCSO",0],
	["A3L_CVPIFPBFG",0],
	["A3L_CVPIFPBLBPD",0],
	["A3L_CVPIFPBLBCSO",0],
	["A3L_CVPIFPBLBFG",0],
	["A3L_TahoeUCPB",0],
	["A3L_TahoeUC",0],
	["A3L_TahoeUCGMPB",0],
	["A3L_TahoeCSOLBPB",0 ],
	["A3L_jailBus",0],
	["A3L_Suburban",0],
	["A3L_SuburbanCSO",0],
	["A3L_SuburbanFG",0],
	["M1030",0],
	["B_MRAP_01_F",7500],
	["BMW_M5Black",0],
	["BMW_M5Blue",0],
	["BMW_M5Red",0],
	["BMW_M5White",0],
	
	["A3L_Bicycle",0],
	["A3L_OldBike",0]
	
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",0],
	["A3L_M3",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",500],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",500],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["B_MRAP_01_F",0],
	["A3L_Karts",0],
	["A3L_AmberLamps",0],
	["A3L_Laddertruck",0],
	["A3L_Cooper_concept_blue",0],
	["A3L_Cooper_concept_black",0],
	["A3L_Cooper_concept_red",0],
	["A3L_Cooper_concept_white",0],
	["A3L_AMC",0],
	["A3L_AMXRed",0],
	["A3L_AMXWhite",0],
	["A3L_AMXBlue",0],
	["A3L_AMXGL",0],
	["A3L_VolvoS60RBlack",0],
	["A3L_VolvoS60Rred",0],
	["S_Skyline_Red",0],
	["S_Skyline_Blue",0],
	["S_Skyline_Black",0],
	["S_Skyline_Yellow",0],
	["S_Skyline_Purple",0],
	["S_Skyline_White",0],
	["S_Vantage_Red",0],
	["S_Vantage_Blue",0],
	["S_Vantage_Black",0],
	["S_Vantage_Yellow",0],
	["S_Vantage_LightBlue",0],
	["S_Vantage_Purple",0],
	["S_Vantage_White",0],	
	["A3L_Ferrari458black",0],
	["A3L_Ferrari458white",0],
	["A3L_Ferrari458blue",0],
	["A3L_SuburbanWhite",0],
	["A3L_SuburbanBlue",0],
	["A3L_SuburbanRed",0],
	["A3L_SuburbanBlack",0],
	["A3L_SuburbanGrey",0],
	["A3L_SuburbanOrange",0],
	["A3L_TahoeWhite",0],
	["A3L_TahoeRed",0],
	["A3L_TahoeBlue",0],
	["A3L_Camaro",0],
	["A3L_FordKaBlue",0],
	["A3L_FordKaRed",0],
	["A3L_FordKaBlack",0],
	["A3L_FordKaWhite",0],
	["A3L_FordKaGrey",0],
	["A3L_CVWhite",0],
	["A3L_CVBlack",0],
	["A3L_CVGrey",0],
	["A3L_CVRed",0],
	["A3L_CVPink",0],
	["A3L_CVBlue",0],	
	["A3L_Taurus",0],
	["A3L_TaurusBlack",0],
	["A3L_TaurusBlue",0],
	["A3L_TaurusRed",0],
	["A3L_TaurusWhite",0],
	["A3L_GrandCaravan",0],
	["A3L_GrandCaravanBlk",0],
	["A3L_GrandCaravanBlue",0],
	["A3L_GrandCaravanGreen",0],
	["A3L_GrandCaravanRed",0],
	["A3L_GrandCaravanPurple",0],
	["A3L_Challenger",0],
	["A3L_ChallengerGreen",0],
	["A3L_ChallengerRed",0],
	["A3L_ChallengerWhite",0],
	["A3L_ChallengerBlack",0],
	["A3L_ChallengerBlue",0],
	["A3L_ChargerBlack",0],
	["A3L_ChargerWhit",0],
	["A3L_ChargerCstm",0],
	["Jonzie_Viper",0],
	["A3L_Escort",0],
	["A3L_EscortTaxi",0],
	["A3L_EscortBlack",0],
	["A3L_EscortBlue",0],
	["A3L_EscortWhite",0],
	["A3L_EscortPink",0],
	["C_Kart_01_Blu_F",0],
	["C_Kart_01_Fuel_F",0],
	["C_Kart_01_Red_F",0],
	["C_Kart_01_Vrana_F",0],
	["A3L_PuntoRed",0],
	["A3L_PuntoBlack",0],
	["A3L_PuntoWhite",0],
	["A3L_PuntoGrey",0],
	["A3L_RegalBlack",0],
	["A3L_RegalBlue",0],
	["A3L_RegalOrange",0],
	["A3L_RegalRed",0],
	["A3L_RegalWhite",0],
	["A3L_JeepWhiteBlack",0],
	["A3L_JeepGreenBlack",0],
	["A3L_JeepRedTan",0],
	["A3L_JeepRedBlack",0],
	["A3L_JeepGrayBlack",0],
	["A3L_VolksWagenGolfGTired",0],
	["A3L_VolksWagenGolfGTiblack",0],
	["A3L_VolksWagenGolfGTiblue",0],
	["A3L_VolksWagenGolfGTiwhite",0],
	["A3L_F350Black",0],
	["A3L_F350Blue",0],
	["A3L_F350Red",0],
	["A3L_F350White",0],
	["A3L_Dumptruck",0],
	["C_Van_01_box_F",0],
	["C_Van_01_transport_F",0],
	["A3L_GrandCaravanUC",0],
	["A3L_GrandCaravanUCBlack",0],
	["A3L_TaurusFPBLBPD",0],
	["A3L_TaurusFPBLBCSO",0],
	["A3L_TaurusFPBPD",0],
	["A3L_TaurusFPBPDGM",0],
	["A3L_TaurusFPBCSO",0],
	["A3L_TaurusUCBlack",0],
	["A3L_TaurusUCGrey",0],
	["A3L_TaurusUCWhite",0],
	["A3L_TaurusUCBlue",0],
	["A3L_TaurusUCRed",0],
	["S_Rangerover_Black",0],
	["S_Rangerover_Red",0],
	["S_Rangerover_Blue",0],
	["S_Rangerover_Green",0],
	["S_Rangerover_Purple",0],
	["S_Rangerover_Grey",0],
	["S_Rangerover_Orange",0],
	["S_Rangerover_White",0],
	["A3L_CVPIUC",0],
	["A3L_CVPIUCWhite",0],
	["A3L_CVPIUCBlack",0],
	["A3L_CVPIGrey",0],
	["A3L_CVPIUCRed",0],
	["A3L_CVPIUCPink",0],	
	["A3L_CVPIUCBlue",0],
	["A3L_ChargerUC",0],
	["A3L_ChargerUCWhite",0],	
	["A3L_CVPIFPBPD",0],
	["A3L_CVPIFPBCSO",0],
	["A3L_CVPIFPBFG",0],
	["A3L_CVPIFPBLBPD",0],
	["A3L_CVPIFPBLBCSO",0],
	["A3L_CVPIFPBLBFG",0],
	["A3L_TahoeUCPB",0],
	["A3L_TahoeUC",0],
	["A3L_TahoeUCGMPB",0],
	["A3L_TahoeCSOLBPB",0],
	["A3L_jailBus",0],
	["A3L_Suburban",0],
	["A3L_SuburbanCSO",0],
	["A3L_SuburbanFG",0],
	["BMW_M5Black",0],
	["BMW_M5Blue",0],
	["BMW_M5Red",0],
	["BMW_M5White",0]
];
__CONST__(life_garage_sell,life_garage_sell);
