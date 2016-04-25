/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "A3L_PDOFC";
player addVest "PD_DUTY_VEST";
player addBackpack "AM_PoliceBelt";

player addWeapon "Taser_26";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";
player addMagazine "26_cartridge";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";

//player addItem "cse_bandage_basic"; player assignItem "cse_bandage_basic"; player addItem "cse_bandage_basic"; player assignItem "cse_bandage_basic"; player addItem "cse_bandage_basic"; player assignItem "cse_bandage_basic"; player addItem "cse_bandage_basic"; player assignItem "cse_bandage_basic"; player addItem "cse_bandage_basic"; player assignItem "cse_bandage_basic"; 

player addItem "Chemlight_red";
player assignItem "Chemlight_red";
player addItem "Chemlight_red";
player assignItem "Chemlight_red";

[] call life_fnc_saveGear;
