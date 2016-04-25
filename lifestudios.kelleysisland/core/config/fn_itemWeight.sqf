/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "apple": {1};	
	case "BarGate": {15};
	case "batterypack": {1};
	case "bean": {1};
	case "bean seed": {1};
	case "blastingcharge": {15};
	case "blindfold": {1};
	case "boltcutter": {5};
	case "cannabis": {2.5};
	case "cannabis seed": {0.5};
	case "catshark": {2.5};
	case "cement": {2};
	case "cigarette": {1};
	case "coalrock": {2};
	case "coffee": {1};
	//case "copper_r": {3};
	case "corn": {2};
	case "corn seed": {0.5};
	case "cotton": {1};
	case "cotton seed": {0.5};
	case "defusekit": {2};
	case "diamondc": {2};
	case "diamondrock": {3};
	case "donuts": {1};
	case "Earplugs": {1};
	case "ficuslog": {3};
	case "fuelE": {2};
	case "fuelF": {5};
	case "glass": {1};
	case "heroinp": {2};
	case "iron_r": {2};
	case "ironrock": {3};
	case "lockpick": {1};
	case "mackerel": {1};
	case "marijuana": {2};
	case "mullet": {2};
	case "normalrock": {3};
	case "oilp": {4};
	case "oilu": {5};
	case "olive": {1};
	case "olivelog": {3};
	case "olive seed": {0.5};
	case "opium": {2.5};
	case "opium seed": {0.5};
	case "ornate": {1};
	case "paperlog": {3};
	case "peach": {1};
	case "pickaxe": {2};
	case "pumpkin": {2};
	case "pumpkin seed": {0.5};
	case "rabbit": {1};
	case "raw chicken": {2.5};
	case "raw goat meat": {2};
	case "raw rabbit": {2.5};
	case "raw sheep meat": {2};
	case "Rax's Rum" : {1};
	case "redgull": {1};
	case "RoadBlockConc": {25};
	case "RoadBlockWood": {15};
	case "RoadCone": {2};
	case "RoadConeB": {2};
	case "RoadConeStrip": {10};
	case "RoadConeStripB": {10};
	case "salema": {1};
	case "sand": {2};
	case "spikeStrip": {4};
	case "storagebig": {10};
	case "storagesmall": {5};
	case "sunflower": {1};
	case "sunflower seed": {0.5};
	case "tbacon": {1};
	case "tuna": {2.5};
	case "turtle": {3};
	case "turtlesoup": {2};
	case "water": {1};
	case "wheat": {1};
	case "wheat seed": {0.5};
	case "zipties": {1};
	case "zoobeer": {1};
	case "money": {0};
	case "repairkit": {10};
	case "grantdriverlicence": {1};
	case "grantgunlicence": {1};
	default {1};
};
