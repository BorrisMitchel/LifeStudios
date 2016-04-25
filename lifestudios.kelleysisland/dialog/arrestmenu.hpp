class FB_jail_menu {
	idd = 5546;
	name= "FB_jail_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";
	objects[] = { };
	class controls {

class background: RscPicture
{
	idc = 1200;
	text = "\FB_Client\images\jailmenu.paa";
	x = 0.288594 * safezoneW + safezoneX;
	y = 0.203 * safezoneH + safezoneY;
	w = 0.417656 * safezoneW;
	h = 0.561 * safezoneH;
};
class nameofplayer: Life_RscText
{
	idc = 2200;
	x = 0.395885 * safezoneW + safezoneX;
	y = 0.357 * safezoneH + safezoneY;
	w = 0.199531 * safezoneW;
	h = 0.033 * safezoneH;
};
class jailtime: RscEdit
{
	idc = 2201;
	text = "0";
	x = 0.394792 * safezoneW + safezoneX;
	y = 0.424075 * safezoneH + safezoneY;
	w = 0.0786977 * safezoneW;
	h = 0.0311481 * safezoneH;
};
class crimescommited: RscEdit
{
	idc = 2202;
	x = 0.480729 * safezoneW + safezoneX;
	y = 0.423148 * safezoneH + safezoneY;
	w = 0.114635 * safezoneW;
	h = 0.0339259 * safezoneH;
};
class allcrimes: RscListbox
{
	idc = 2203;
	x = 0.395833 * safezoneW + safezoneX;
	y = 0.487963 * safezoneH + safezoneY;
	w = 0.12401 * safezoneW;
	h = 0.147815 * safezoneH;
};
class sendtojail: RscButtonSilent
{
	idc = 2204;
	action = "[] call fnc_arrestbutton;";
	x = 0.525 * safezoneW + safezoneX;
	y = 0.602778 * safezoneH + safezoneY;
	w = 0.0703642 * safezoneW;
	h = 0.0339261 * safezoneH;
};
};
};

class FB_arrest_panel {
	idd = 5547;
	name= "FB_arrest_panel";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "uiNamespace setVariable [""FB_arrest_panel"", _this select 0];";
	objects[] = { };
	class controls {
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Travis Butts, v1.337, #YOLO)
////////////////////////////////////////////////////////
class frame: RscFrame
{
	idc = 1800;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.357 * safezoneH + safezoneY;
	w = 0.2475 * safezoneW;
	h = 0.286 * safezoneH;
};
class background: IGUIBack
{
	idc = 2200;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.357 * safezoneH + safezoneY;
	w = 0.2475 * safezoneW;
	h = 0.286 * safezoneH;
};
class nametext: RscStructuredText
{
	idc = 1000;
	text = ""; //--- ToDo: Localize;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.357 * safezoneH + safezoneY;
	w = 0.2475 * safezoneW;
	h = 0.022 * safezoneH;
};
class reasonsell: RscStructuredText
{
	idc = 1001;
	text = ""; //--- ToDo: Localize;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.401 * safezoneH + safezoneY;
	w = 0.2475 * safezoneW;
	h = 0.022 * safezoneH;
};
class jailtimetext: RscStructuredText
{
	idc = 1002;
	text = ""; //--- ToDo: Localize;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.2475 * safezoneW;
	h = 0.022 * safezoneH;
};
class reasonedit: RscEdit
{
	idc = 1400;
	x = 0.386562 * safezoneW + safezoneX;
	y = 0.434 * safezoneH + safezoneY;
	w = 0.12375 * safezoneW;
	h = 0.022 * safezoneH;
};
class hoursedit: RscEdit
{
	idc = 1401;
	x = 0.45875 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
};
class minsedit: RscEdit
{
	idc = 1402;
	x = 0.45875 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
};
class secondsedit: RscEdit
{
	idc = 1403;
	x = 0.45875 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1003: RscText
{
	idc = 1003;
	text = "Reason"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.434 * safezoneH + safezoneY;
	w = 0.0309375 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.75 * GUI_GRID_H;
};
class RscText_1004: RscText
{
	idc = 1004;
	text = "Hours"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.0309375 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.75 * GUI_GRID_H;
};
class RscText_1005: RscText
{
	idc = 1005;
	text = "Mins"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0309375 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.75 * GUI_GRID_H;
};
class RscText_1006: RscText
{
	idc = 1006;
	text = "Seconds"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.0309375 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.75 * GUI_GRID_H;
};
class RscButton_1600: RscButtonBlue
{
	idc = 1600;
	text = "UPDATE"; //--- ToDo: Localize;
	x = 0.551562 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[] call fnc_updatejailtime";
};
class RscButton_1601: RscButtonBlue
{
	idc = 1601;
	text = "Cuff legs"; //--- ToDo: Localize;
	x = 0.402031 * safezoneW + safezoneX;
	y = 0.555 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[] call fnc_cufflegs";
	sizeEx = 0.75 * GUI_GRID_H;
};
class RscButton_6352: RscButtonBlue
{
	idc = 6352;
	text = "Unrestrain"; //--- ToDo: Localize;
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.044 * safezoneH;
	action = "[prisoner] call life_fnc_unrestrain; closeDialog 0;";
};
class RscButton_5251: RscButtonBlue
{
	idc = 5251;
	text = "escort"; //--- ToDo: Localize;
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.434 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.044 * safezoneH;
};
class RscText_1007: RscText
{
	idc = 1007;
	text = "Jailsystem BETA"; //--- ToDo: Localize;
	x = 0.536094 * safezoneW + safezoneX;
	y = 0.621 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
};

};
};

