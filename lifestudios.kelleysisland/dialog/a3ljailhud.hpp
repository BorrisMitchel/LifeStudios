class a3l_jail_timer {
	idd = 5536;
	duration = 1e+012;
	onLoad = "uiNamespace setVariable [""a3ljailtimer"", _this select 0];";
	class controls {
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zannaza, v1.337, #YOLO)
////////////////////////////////////////////////////////

class time: RscStructuredText
{
	idc = 1100;
	text = "<t font='EtelkaNarrowMediumPro' color='#B20000' align='center' size='1.8'></t>"; //--- ToDo: Localize;
	x = -0.000155979 * safezoneW + safezoneX;
	y = -0.00599998 * safezoneH + safezoneY;
	w = 1.00031 * safezoneW;
	h = 0.077 * safezoneH;
};
class RscText_1001: RscStructuredText
{
	idc = 1101;
	text = "<t font='EtelkaNarrowMediumPro' color='#B20000' align='center' size='0.8'></t>"; //--- ToDo: Localize;
	x = -0.000156299 * safezoneW + safezoneX;
	y = 0.038 * safezoneH + safezoneY;
	w = 1.00031 * safezoneW;
	h = 0.066 * safezoneH;
};
class bonustimetext: RscStructuredText
{
	idc = 1002;
	text = ""; //--- ToDo: Localize;
	x = 0.479375 * safezoneW + safezoneX;
	y = 0.082 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.033 * safezoneH;
};
class cuffmenu: RscStructuredText
{
	idc = 1521;
	text = ""; //--- ToDo: Localize;
	x = 0.262812 * safezoneW + safezoneX;
	y = 0.962 * safezoneH + safezoneY;
	w = 0.28875 * safezoneW;
	h = 0.033 * safezoneH;
};

};
};