class a3l_sms_hud {
	idd = 5529;
	duration = 1e+012;
	onLoad = "uiNamespace setVariable [""a3lsmshud"", _this select 0];";
	class controls {
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zannaza, v1.337, #YOLO)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "\A3L_Client2\cellphone\base\blackphone.paa";
	x = 0.799062 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.268125 * safezoneW;
	h = 0.473 * safezoneH;
};
class RscPicture_1201: RscPicture
{
	idc = 1201;
	text = "\A3L_Client2\cellphone\backgrounds\background01.paa";
	x = 0.799062 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.268125 * safezoneW;
	h = 0.473 * safezoneH;
};
class IGUIBack_2200: IGUIBack
{
	idc = 2200;
	x = 0.8825 * safezoneW + safezoneX;
	y = 0.33 * safezoneH + safezoneY;
	w = 0.0995834 * safezoneW;
	h = 0.278148 * safezoneH;
};
class RscText_1002: RscStructuredText
{
	idc = 55263;
	text = ""; //--- ToDo: Localize;
	x = 0.882292 * safezoneW + safezoneX;
	y = 0.294444 * safezoneH + safezoneY;
	w = 0.100104 * safezoneW;
	h = 0.0355556 * safezoneH;
	sizeEx = 0.5 * GUI_GRID_H;
};
class textsms: RscStructuredText
{
	idc = 52163;
	text = ""; //--- ToDo: Localize;
	x = 0.8825 * safezoneW + safezoneX;
	y = 0.33 * safezoneH + safezoneY;
	w = 0.0995834 * safezoneW;
	h = 0.278148 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
};

};
};

class a3l_lvlup_hud {
	idd = 5529;
	duration = 1e+012;
	onLoad = "uiNamespace setVariable [""a3llvlhud"", _this select 0];";
	class controls {
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zannaza, v1.337, #YOLO)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.83 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.0464063 * safezoneW;
	h = 0.077 * safezoneH;
};
class IGUIBack_2200: IGUIBack
{
	idc = 2200;
	x = 0.824844 * safezoneW + safezoneX;
	y = 0.214 * safezoneH + safezoneY;
	w = 0.175313 * safezoneW;
	h = 0.099 * safezoneH;
};
class RscFrame_1800: RscFrame
{
	idc = 1800;
	x = 0.824844 * safezoneW + safezoneX;
	y = 0.214 * safezoneH + safezoneY;
	w = 0.175313 * safezoneW;
	h = 0.099 * safezoneH;
};
class bckback: IGUIBack
{
	idc = 2201;
	x = 0.876406 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.128906 * safezoneW;
	h = 0.077 * safezoneH;
};
class RscText_1000: RscStructuredText
{
	idc = 1000;
	text = "You reached level 55."; //--- ToDo: Localize;
	x = 0.876405 * safezoneW + safezoneX;
	y = 0.269 * safezoneH + safezoneY;
	w = 0.118594 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.8 * GUI_GRID_H;
};
class RscText_1001: RscStructuredText
{
	idc = 1001;
	text = "Farming"; //--- ToDo: Localize;
	x = 0.876405 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.118594 * safezoneW;
	h = 0.033 * safezoneH;
	sizeEx = 1.5 * GUI_GRID_H;
};
};
};