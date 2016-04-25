/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "A3L_Bicycle": {0};
	case "A3L_OldBicycle": {0};

	case "S_Rangerover_Black": {25};
	case "S_Rangerover_Red": {25};
	case "S_Rangerover_Blue": {25};
	case "S_Rangerover_Green": {25};
	case "S_Rangerover_Purple": {25};
	case "S_Rangerover_Grey": {25};
	case "S_Rangerover_Orange": {25};
	case "S_Rangerover_White": {25};
	
	case "A3L_RX7_Blue": {25};
	case "A3L_RX7_Red": {25};
	case "A3L_RX7_White": {25};
	case "A3L_RX7_Black": {25};
	
	case "S_Vantage_Red": {25};
	case "S_Vantage_Blue": {25};
	case "S_Vantage_Yellow": {25};
	case "S_Vantage_Black": {25};
	case "S_Vantage_LightBlue": {25};
	case "S_Vantage_Purple": {25};
	case "S_Vantage_White": {25};	

	case "A3L_ChargerUC": {25};
	case "A3L_ChargerUCWhite": {25};

	case "A3L_CVWhite": {25};
	case "A3L_CVBlack": {25};
	case "A3L_CVGrey": {25};
	case "A3L_CVRed": {25};
	case "A3L_CVPink": {25};
	case "A3L_CVBlue": {25};
	
	case "A3L_CVPILBFD": {25};
	
	case "A3L_CVPIUC": {25};
	case "A3L_CVPIUCBlack": {25};
	case "A3L_CVPIUCWhite": {25};
	case "A3L_CVPIUCGrey": {25};
	case "A3L_CVPIUCRed": {25};
	case "A3L_CVPIUCPink": {25};
	case "A3L_CVPIUCBlue": {25};
	
	case "Jonzie_Mini_Cooper": {25};

	case "S_McLarenP1_Black": {25};
	case "S_McLarenP1_Blue": {25};
	case "S_McLarenP1_Orange": {25};
	case "S_McLarenP1_White": {25};
	case "S_McLarenP1_Yellow": {25};
	case "S_McLarenP1_Silver": {25};
	
	case "S_PorscheRS_Black": {25};
	case "S_PorscheRS_Yellow": {25};
	case "S_PorscheRS_White": {25};
	
	case "IVORY_REV": {25};
	case "IVORY_R8SPYDER": {25};
	case "IVORY_R8": {25};
	case "IVORY_PRIUS": {25};
	case "A3L_M3": {25};
	case "BMW_M5Black": {25};
	case "BMW_M5Blue": {25};
	case "BMW_M5Red": {25};
	case "BMW_M5White": {25};
	case "A3L_EvoXFPBLBSO": {25};


	case "A3L_GrandCaravanUC": {25};
	case "A3L_GrandCaravanUCBlack": {25};
	
	case "A3L_Bus": {30};
	
	case "A3L_TaurusFPBLBPD": {25};
	case "A3L_TaurusFPBLBCSO": {25};
	case "A3L_TaurusFPBPD": {25};
	case "A3L_TaurusFPBPDGM": {25};
	case "A3L_TaurusFPBCSO": {25};
	case "A3L_TaurusUCBlack": {25};
	case "A3L_TaurusUCGrey": {25};
	case "A3L_TaurusUCWhite": {25};
	case "A3L_TaurusUCBlue": {25};
	
	case "A3L_CVPIFPBPD": {25};
	case "A3L_CVPIFPBCSO": {25};
	case "A3L_CVPIFPBFG": {25};
	case "A3L_CVPIFPBLBPD": {25};
	case "A3L_CVPIFPBLBFG": {25};

	case "A3L_TahoeUCPB": {25};
	case "A3L_TahoeUC": {25};
	case "A3L_TahoeUCGMPB": {25};
	case "A3L_TahoeCSOLBPB": {25};
	
	case "A3L_jailBus": {25};
	
	case "A3L_Suburban": {25};
	case "A3L_SuburbanCSO": {25};
	case "A3L_SuburbanFG": {25};
	
	case "A3L_AmberLamps": {25};
	case "A3L_Laddertruck": {25};
	
	case "A3L_Karts": {5};	
	case "A3L_Towtruck": {30};
	case "M1030": {25};

	case "A3L_Escort": {25};
	case "A3L_EscortTaxi": {25};
	case "A3L_EscortBlue": {25};
	case "A3L_EscortWhite": {25};
	case "A3L_EscortPink": {25};
	
	case "A3L_PuntoRed": {35};
	case "A3L_PuntoBlack": {35};
	case "A3L_PuntoWhite": {35};
	case "A3L_PuntoGrey": {35};
	
	case "A3L_FordKaBlue": {35};
	case "A3L_FordKaRed": {35};
	case "A3L_FordKaBlack": {35};
	case "A3L_FordKaWhite": {35};
	case "A3L_FordKaGrey": {35};
	
	case "A3L_RegalBlack": {35};
	case "A3L_RegalBlue": {35};
	case "A3L_RegalOrange": {35};
	case "A3L_RegalRed": {35};
	case "A3L_RegalWhite": {35};
	
	case "A3L_JeepWhiteBlack": {35};
	case "A3L_JeepGreenBlack": {35};
	case "A3L_JeepRedTan": {35};
	case "A3L_JeepRedBlack": {35};
	case "A3L_JeepGrayBlack": {35};
	
	case "A3L_SuburbanWhite": {45};
	case "A3L_SuburbanBlue": {45};
	case "A3L_SuburbanRed": {45};
	case "A3L_SuburbanBlack": {45};
	case "A3L_SuburbanGrey": {45};
	case "A3L_SuburbanOrange": {45};
	
	case "A3L_TahoeWhite": {45};
	case "A3L_TahoeRed": {45};
	case "A3L_TahoeBlue": {45};
	
	case "A3L_Camaro": {55};
	
	case "A3L_Taurus": {60};
	case "A3L_TaurusBlack": {60};
	case "A3L_TaurusBlue": {60};
	case "A3L_TaurusRed": {60};
	case "A3L_TaurusBlue": {60};
	
	case "A3L_Challenger": {60};
	case "A3L_ChallengerGreen": {60};
	case "A3L_ChallengerRed": {60};
	case "A3L_ChallengerWhite": {60};
	case "A3L_ChallengerBlack": {60};
	case "A3L_ChallengerBlue": {60};
	
	case "A3L_ChargerBlack": {60};
	case "A3L_ChargerWhit": {60};
	case "A3L_ChargerCstm": {60};
	
	case "A3L_VolksWagenGolfGTired": {35};
	case "A3L_VolksWagenGolfGTiblack": {35};
	case "A3L_VolksWagenGolfGTiblue": {35};
    case "A3L_VolksWagenGolfGTiwhite": {35};
	
	case "A3L_AMC": {35};
	case "A3L_AMXRed": {35};
	case "A3L_AMXWhite": {35};
	case "A3L_AMXBlue": {35};
	case "A3L_AMXGL": {35};
	
	case "A3L_VolvoS60RBlack": {35};
	case "A3L_VolvoS60Rred": {35};
	
	case "S_Skyline_Red": {35};
	case "S_Skyline_Blue": {35};
	case "S_Skyline_Black": {35};
	case "S_Skyline_Yellow": {35};
	case "S_Skyline_Purple": {35};
	case "S_Skyline_White": {35};
	
	
	case "A3L_Cooper_concept_blue": {25};
	case "A3L_Cooper_concept_black": {25};
	case "A3L_Cooper_concept_red": {25};
	case "A3L_Cooper_concept_white": {25};
	
	case "A3L_Ferrari458black": {25};
	case "A3L_Ferrari458white": {25};
	case "A3L_Ferrari458blue": {25};
	
	case "A3L_GrandCaravan": {25};
	case "A3L_GrandCaravanBlk": {25};
	case "A3L_GrandCaravanBlue": {25};
	case "A3L_GrandCaravanGreen": {25};
	case "A3L_GrandCaravanRed": {25};
	case "A3L_GrandCaravanPurple": {25};
	
	
	case "Jonzie_Viper": {60};
	case "A3L_F350Black": {85};
	case "A3L_F350Blue": {85};
	case "A3L_F350Red": {85};
	case "A3L_F350White": {85};
	case "A3L_Dumptruck": {170};
	
	//New Cars --------------------
	
	//EvoX
	case "A3L_EvoX_Red": {25};
	case "A3L_EvoX_Black": {25};
	case "A3L_EvoX_DarkBlue": {25};
	case "A3L_EvoX_Green": {25};
	case "A3L_EvoX_Yellow": {25};
	case "A3L_EvoX_Pink": {25};
	case "A3L_EvoX_Grey": {25};
	case "A3L_EvoX_Purple": {25};
	case "A3L_EvoX_White": {25};
	case "A3L_EvoX_Orange": {25};
	
	//Peugeot_207
	case "A3L_Peugeot_207_Red": {25};
	case "A3L_Peugeot_207_Black": {25};
	case "A3L_Peugeot_207_DarkBlue": {25};
	case "A3L_Peugeot_207_Yellow": {25};
	case "A3L_Peugeot_207_Pink": {25};
	case "A3L_Peugeot_207_Grey": {25};
	case "A3L_Peugeot_207_Purple": {25};
	case "A3L_Peugeot_207_Orange": {25};
	
	//Peugeot_308
	case "A3L_Peugeot_308_RCZ_Red": {30};
	case "A3L_Peugeot_308_RCZ_Black": {30};
	case "A3L_Peugeot_308_RCZ_DarkBlue": {30};
	case "A3L_Peugeot_308_RCZ_Yellow": {30};
	case "A3L_Peugeot_308_RCZ_Pink": {30};
	case "A3L_Peugeot_308_RCZ_Grey": {30};
	case "A3L_Peugeot_308_RCZ_Orage": {30};
	
	//Ford Mustang
	case "A3L_Ford_Mustang_Red": {25};
	case "A3L_Ford_Mustang_Black": {25};
	case "A3L_Ford_Mustang_DarkBlue": {25};
	case "A3L_Ford_Mustang_Yellow": {25};
	case "A3L_Ford_Mustang_Pink": {25};
	case "A3L_Ford_Mustang_Grey": {25};
	case "A3L_Ford_Mustang_Purple": {25};
	case "A3L_Ford_Mustang_Orange": {25};
	case "A3L_Ford_Mustang_White": {25};
	
	//Ford Raptor
	case "A3L_Ford_Raptor_White": {70};
	case "A3L_Ford_Raptor_Black": {70};
	case "A3L_Ford_Raptor_DarkBlue": {70};
	case "A3L_Ford_Raptor_Red": {70};
	case "A3L_Ford_Raptor_Yellow": {70};
	case "A3L_Ford_Raptor_Pink": {70};
	case "A3L_Ford_Raptor_Grey": {70};
	case "A3L_Ford_Raptor_Purple": {70};
	case "A3L_Ford_Raptor_Orange": {70};
	
	//BMW M6
	case "A3L_BMW_M6_Grey": {25};
	case "A3L_BMW_M6_Yellow": {25};
	case "A3L_BMW_M6_Orange": {25};
	case "A3L_BMW_M6_Red": {25};
	case "A3L_BMW_M6_Black": {25};
	case "A3L_BMW_M6_DarkBlue": {25};
	case "A3L_BMW_M6_Purple": {25};
	case "A3L_BMW_M6_Pink": {25};
	case "A3L_BMW_M6_White": {25};
	
	//GMC Van
	case "A3L_GMC_Van_White": {55};
	case "A3L_GMC_Van_Black": {55};
	case "A3L_GMC_Van_DarkBlue": {55};
	case "A3L_GMC_Van_Red": {55};
	case "A3L_GMC_Van_Yellow": {55};
	case "A3L_GMC_Van_Pink": {55};
	case "A3L_GMC_Van_Grey": {55};
	case "A3L_GMC_Van_Purple": {55};
	case "A3L_GMC_Van_Orage": {55};
	case "A3L_GMC_Van_Food": {55};
	case "A3L_GMC_Van_General": {55};
	
	//VW Golf
	case "A3L_GolfVI_Red": {25};
	case "A3L_GolfVI_Black": {25};
	case "A3L_GolfVI_DarkBlue": {25};
	case "A3L_GolfVI_Yellow": {25};
	case "A3L_GolfVI_Pink": {25};
	case "A3L_GolfVI_Grey": {25};
	case "A3L_GolfVI_Purple": {25};
	case "A3L_GolfVI_Orange": {25};
	
	//Jeep Cherokee
	case "A3L_Jeep_Cherokee_Black": {45};
	case "A3L_Jeep_Cherokee_BlackMatte": {45};
	case "A3L_Jeep_Cherokee_DarkBlue": {45};
	case "A3L_Jeep_Cherokee_DarkBlueMatte": {45};
	case "A3L_Jeep_Cherokee_White": {45};
	case "A3L_Jeep_Cherokee_WhiteMatte": {45};
	case "A3L_Jeep_Cherokee_Purple": {45};
	case "A3L_Jeep_Cherokee_PurpleMatte": {45};
	
	//1969 Lincoln
	case "A3L_Lincoln_Red": {25};
	case "A3L_Lincoln_Black": {25};
	case "A3L_Lincoln_DarkBlue": {25};
	case "A3L_Lincoln_Yellow": {25};
	case "A3L_Lincoln_Pink": {25};
	case "A3L_Lincoln_Grey": {25};
	case "A3L_Lincoln_Purple": {25};
	case "A3L_Lincoln_Orange": {25};

	//Nissan GTR
	case "Nissan_GTR_White": {25};
	case "Nissan_GTR_Black": {25};
	case "Nissan_GTR_DarBlue": {25};
	case "Nissan_GTR_Red": {25};
	case "Nissan_GTR_Green": {25};
	
	//Renault Magnum
	case "A3L_Renault_Magnum": {270};
	case "Jonzie_Curtain": {350};
	
	//Jonzie Trailer
	
	//SmartCar
	case "A3L_Smartcar_Red": {25};
	case "A3L_Smartcar_Black": {25};
	case "A3L_Smartcar_Blue": {25};
	
	//Subaru
	case "A3L_Subaru_WRX_Red": {25};
	case "A3L_Subaru_WRX_Black": {25};
	case "A3L_Subaru_WRX_DarkBlue": {25};
	case "A3L_Subaru_WRX_Yellow": {25};
	case "A3L_Subaru_WRX_Pink": {25};
	case "A3L_Subaru_WRX_Grey": {25};
	case "A3L_Subaru_WRX_Purple": {25};
	case "A3L_Subaru_WRX_Orange": {25};
	case "a3l_subaru_police": {45};
	
	//Touareg
	case "A3L_Touareg_Red": {40};
	case "A3L_Touareg_Black": {40};
	case "A3L_Touareg_DarkBlue": {40};
	case "A3L_Touareg_White": {40};
	case "A3L_Touareg_Yellow": {40};
	case "A3L_Touareg_Pink": {40};
	case "A3L_Touareg_Grey": {40};
	case "A3L_Touareg_Purple": {40};
	case "A3L_Touareg_Orange": {40};
	
	
	//End Of new -----------------
	// default
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	case "C_Hatchback_01_sport_F": {45};
	case "C_Van_01_transport_F": {40};
	case "I_G_Van_01_transport_F": {40};
	case "C_Van_01_box_F": {60};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	default {-1};
};