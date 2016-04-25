/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {10000}; //Drivers License cost
	case "boat": {155000}; //Boating license cost
	case "pilot": {2575000}; //Pilot/air license cost
	case "fcl": {205000}; //Firearm/gun license cost - Updated with new name
	case "dive": {115000}; //Diving license cost
	case "oil": {164590}; //Oil processing license cost
	case "cair": {500}; //Cop Pilot License cost
	case "swat": {5000}; //Swat License cost
	case "cg": {500}; //Coast guard license cost
	case "heroin": {575000}; //Heroin processing license cost
	case "marijuana": {575000}; //Marijuana processing license cost
	case "medmarijuana": {24500}; //Medical Marijuana processing license cost
	case "gang": {300000}; //Gang license cost
	case "rebel": {955000}; //Rebel license cost
	case "truck": {185000}; //Truck license cost
	case "diamond": {200000}; //Diamond processing license cost
	case "salt": {100000}; //Salt processing license cost
	case "cocaine": {475000}; //Cocaine processing license cost
	case "sand": {100000}; //Sand processing license cost
	case "iron": {125000}; //Iron ore processing license cost
	case "copper": {100000}; //Copper ore processing license cost
	case "cement": {100000};  //Rock processing license cost
	case "mair": {500}; //Cop Pilot License cost
	case "home": {750000}; //Home Owners License cost
	case "rifle": {400000}; //Rifle license cost
	case "fsl": {105000}; //Firearm sales license cost
};
