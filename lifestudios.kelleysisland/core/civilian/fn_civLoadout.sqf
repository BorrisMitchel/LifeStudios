/*
	File: fn_civLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the civs out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_random = round random 4;

switch (_random) do {
    case 0: { player addUniform "A3L_BluePoloShirt"; };
    case 1: { player addUniform "A3L_PinkPoloShirt"; };
    case 2: { player addUniform "A3L_GreenPoloShirt"; };
    case 3: { player addUniform "A3L_BrownPoloShirt"; };
    case 4: { player addUniform "A3L_PurplePoloShirt"; };
};

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_saveGear;