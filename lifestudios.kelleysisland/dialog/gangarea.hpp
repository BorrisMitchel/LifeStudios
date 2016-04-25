class gangareainfo {
	idd = 5546;
	name= "gangareainfo";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "uiNamespace setVariable [""gangareainfo"", _this select 0];";
	objects[] = { };
	class controls {
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zannaza, v1.337, #YOLO)
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zannaza, v1.063, #Funeka)
////////////////////////////////////////////////////////

class RscText_1000: RscText
{
	idc = 1000;
	text = "Gang area BETA ( update 1/3)"; //--- ToDo: Localize;
	x = 0.407187 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.170156 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1001: RscText
{
	idc = 1001;
	text = "Workers: 0/100"; //--- ToDo: Localize;
	x = 0.365937 * safezoneW + safezoneX;
	y = 0.357 * safezoneH + safezoneY;
	w = 0.165 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1002: RscText
{
	idc = 1002;
	text = "Gang Area hr paycheck:"; //--- ToDo: Localize;
	x = 0.365937 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.165 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1003: RscText
{
	idc = 1003;
	text = "Areamoney:"; //--- ToDo: Localize;
	x = 0.365937 * safezoneW + safezoneX;
	y = 0.423 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.022 * safezoneH;
};
class transfermoney: RscEdit
{
	idc = 1400;
	text = "0"; //--- ToDo: Localize;
	x = 0.365937 * safezoneW + safezoneX;
	y = 0.489 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1004: RscText
{
	idc = 1004;
	text = "Gangmoney:"; //--- ToDo: Localize;
	x = 0.365937 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscButton_1600: RscButtonBlue
{
	idc = 1600;
	text = "Transfer"; //--- ToDo: Localize;
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "[] spawn fnc_transfercash";
};
class RscText_1005: RscText
{
	idc = 1005;
	text = "1 worker = 1000$"; //--- ToDo: Localize;
	x = 0.489687 * safezoneW + safezoneX;
	y = 0.423 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.8 * GUI_GRID_H;
};
class buyworkers: RscEdit
{
	idc = 1401;
	text = "0"; //--- ToDo: Localize;
	x = 0.489687 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscButton_1601: RscButtonBlue
{
	idc = 1601;
	text = "Buy"; //--- ToDo: Localize;
	x = 0.546406 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "[] spawn fnc_buyareaslaves";
};
class IGUIBack_2200: IGUIBack
{
	idc = 2200;
	x = 0.350469 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.268125 * safezoneW;
	h = 0.275 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};
};