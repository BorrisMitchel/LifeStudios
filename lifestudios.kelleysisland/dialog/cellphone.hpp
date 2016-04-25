class cellphone
{
idd = 12198;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen = 1; ";
onunload = "cellphoneopen = 0;";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	//--------------APP 1-------------------
		class apppic1: RscPicture
		{
			idc = 1001;
			text = "";
			x = 0.423687 * safezoneW + safezoneX;
			y = 0.27538 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn1: Rscbutton
		{
			idc = 2001;
			x = 0.423687 * safezoneW + safezoneX;
			y = 0.27538 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 0) then { [1] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 0) then { ctrlSetText [1001, ((tabletapp_array select 0) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 0) then { ctrlSetText [1001, ((tabletapp_array select 0) select 2)]; };";
		};
		class apptext1: RscStructuredText
		{
			idc = 3001;
			text = "";
			x = 0.420104 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 2-------------------
		class apppic2: RscPicture
		{
			idc = 1002;
			text = "";
			x = 0.463597 * safezoneW + safezoneX;
			y = 0.27516 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn2: RscButton
		{
			idc = 2002;
			x = 0.463597 * safezoneW + safezoneX;
			y = 0.27516 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 1) then { [2] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 1) then { ctrlSetText [1002, ((tabletapp_array select 1) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 1) then { ctrlSetText [1002, ((tabletapp_array select 1) select 2)]; };";
		};
		class apptext2: RscStructuredText
		{
			idc = 3002;
			text = "";
			x = 0.461459 * safezoneW + safezoneX;
			y = 0.324074 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 3-------------------
		class apppic3: RscPicture
		{
			idc = 1003;
			text = "";
			x = 0.504641 * safezoneW + safezoneX;
			y = 0.27516 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn3: RscButton
		{
			idc = 2003;
			x = 0.504641 * safezoneW + safezoneX;
			y = 0.27516 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 2) then { [3] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 2) then { ctrlSetText [1003, ((tabletapp_array select 2) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 2) then { ctrlSetText [1003, ((tabletapp_array select 2) select 2)]; };";
		};
		class apptext3: RscStructuredText
		{
			idc = 3003;
			text = "";
			x = 0.501563 * safezoneW + safezoneX;
			y = 0.324074 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 4-------------------
		class apppic4: RscPicture
		{
			idc = 1004;
			text = "";
			x = 0.545272 * safezoneW + safezoneX;
			y = 0.27516 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn4: RscButton
		{
			idc = 2004;
			x = 0.545272 * safezoneW + safezoneX;
			y = 0.27516 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 3) then { [4] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 3) then { ctrlSetText [1004, ((tabletapp_array select 3) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 3) then { ctrlSetText [1004, ((tabletapp_array select 3) select 2)]; };";
		};
		class apptext4: RscStructuredText
		{
			idc = 3004;
			text = "";
			x = 0.542188 * safezoneW + safezoneX;
			y = 0.324074 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 5-------------------
		class apppic5: RscPicture
		{
			idc = 1005;
			text = "";
			x = 0.423481 * safezoneW + safezoneX;
			y = 0.35282 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn5: RscButton
		{
			idc = 2005;
			x = 0.423481 * safezoneW + safezoneX;
			y = 0.35282 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 4) then { [5] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 4) then { ctrlSetText [1005, ((tabletapp_array select 4) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 4) then { ctrlSetText [1005, ((tabletapp_array select 4) select 2)]; };";
		};
		class apptext5: RscStructuredText
		{
			idc = 3005;
			text = "";
			x = 0.419791 * safezoneW + safezoneX;
			y = 0.402778 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 6-------------------
		class apppic6: RscPicture
		{
			idc = 1006;
			text = "";
			x = 0.464112 * safezoneW + safezoneX;
			y = 0.35282 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn6: RscButton
		{
			idc = 2006;
			x = 0.464112 * safezoneW + safezoneX;
			y = 0.35282 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 5) then { [6] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 5) then { ctrlSetText [1006, ((tabletapp_array select 5) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 5) then { ctrlSetText [1006, ((tabletapp_array select 5) select 2)]; };";
		};
		class apptext6: RscStructuredText
		{
			idc = 3006;
			text = "";
			x = 0.460938 * safezoneW + safezoneX;
			y = 0.401852 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 7-------------------
		class apppic7: RscPicture
		{
			idc = 1007;
			text = "";
			x = 0.504641 * safezoneW + safezoneX;
			y = 0.35282 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn7: RscButton
		{
			idc = 2007;
			x = 0.504641 * safezoneW + safezoneX;
			y = 0.35282 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 6) then { [7] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 6) then { ctrlSetText [1007, ((tabletapp_array select 6) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 6) then { ctrlSetText [1007, ((tabletapp_array select 6) select 2)]; };";
		};
		class apptext7: RscStructuredText
		{
			idc = 3007;
			text = "";
			x = 0.501562 * safezoneW + safezoneX;
			y = 0.401852 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 8-------------------
		class apppic8: RscPicture
		{
			idc = 1008;
			text = "";
			x = 0.545787 * safezoneW + safezoneX;
			y = 0.35282 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn8: RscButton
		{
			idc = 2008;
			x = 0.545787 * safezoneW + safezoneX;
			y = 0.35282 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 7) then { [8] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 7) then { ctrlSetText [1008, ((tabletapp_array select 7) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 7) then { ctrlSetText [1008, ((tabletapp_array select 7) select 2)]; };";
		};
		class apptext8: RscStructuredText
		{
			idc = 3008;
			text = "";
			x = 0.541666 * safezoneW + safezoneX;
			y = 0.400926 * safezoneH + safezoneY;
			w = 0.0366145 * safezoneW;
			h = 0.0265184 * safezoneH;
		};
	//--------------APP 9-------------------
		class apppic9: RscPicture
		{
			idc = 1009;
			text = "";
			x = 0.423378 * safezoneW + safezoneX;
			y = 0.432332 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn9: RscButton
		{
			idc = 2009;
			x = 0.423378 * safezoneW + safezoneX;
			y = 0.432332 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 8) then { [9] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 8) then { ctrlSetText [1009, ((tabletapp_array select 8) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 8) then { ctrlSetText [1009, ((tabletapp_array select 8) select 2)]; };";

		};

		class apptext9: RscStructuredText
		{
			idc = 3009;
			text = "";
			x = 0.420312 * safezoneW + safezoneX;
			y = 0.480556 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 10-------------------
		class apppic10: RscPicture
		{
			idc = 1010;
			text = "";
			x = 0.464633 * safezoneW + safezoneX;
			y = 0.43158 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn10: RscButton
		{
			idc = 2010;
			x = 0.464633 * safezoneW + safezoneX;
			y = 0.43158 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 9) then { [10] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 9) then { ctrlSetText [1010, ((tabletapp_array select 9) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 9) then { ctrlSetText [1010, ((tabletapp_array select 9) select 2)]; };";
		};

		class apptext10: RscStructuredText
		{
			idc = 3010;
			text = "";
			x = 0.461459 * safezoneW + safezoneX;
			y = 0.480555 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 11-------------------
		class apppic11: RscPicture
		{
			idc = 1011;
			text = "";
			x = 0.504641 * safezoneW + safezoneX;
			y = 0.43158 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn11: RscButton
		{
			idc = 2011;
			x = 0.504641 * safezoneW + safezoneX;
			y = 0.43158 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 10) then { [11] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 10) then { ctrlSetText [1011, ((tabletapp_array select 10) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 10) then { ctrlSetText [1011, ((tabletapp_array select 10) select 2)]; };";

		};
		class apptext11: RscStructuredText
		{
			idc = 3011;
			text = "";
			x = 0.501042 * safezoneW + safezoneX;
			y = 0.480556 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 12-------------------
		class apppic12: RscPicture
		{
			idc = 1012;
			text = "";
			x = 0.545375 * safezoneW + safezoneX;
			y = 0.43158 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0495557 * safezoneH;
		};
		class appbtn12: RscButton
		{
			idc = 2012;
			x = 0.545375 * safezoneW + safezoneX;
			y = 0.43158 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0495557 * safezoneH;
		};
		class apptext12: RscStructuredText
		{
			idc = 3012;
			text = "";
			x = 0.541146 * safezoneW + safezoneX;
			y = 0.481482 * safezoneH + safezoneY;
			w = 0.0371354 * safezoneW;
			h = 0.0237407 * safezoneH;
		};
	//--------------APP 13-------------------
		class apppic13: RscPicture
		{
			idc = 1013;
			text = "";
			x = 0.423986 * safezoneW + safezoneX;
			y = 0.509286 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn13: RscButton
		{
			idc = 2013;
			x = 0.423986 * safezoneW + safezoneX;
			y = 0.509286 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class apptext13: RscStructuredText
		{
			idc = 3013;
			text = "";
			x = 0.420833 * safezoneW + safezoneX;
			y = 0.55926 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 14-------------------
		class apppic14: RscPicture
		{
			idc = 1014;
			text = "";
			x = 0.464633 * safezoneW + safezoneX;
			y = 0.509332 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn14: RscButton
		{
			idc = 2014;
			x = 0.464633 * safezoneW + safezoneX;
			y = 0.509332 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class apptext14: RscStructuredText
		{
			idc = 3014;
			text = "";
			x = 0.461459 * safezoneW + safezoneX;
			y = 0.559259 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 15-------------------
		class apppic15: RscPicture
		{
			idc = 1015;
			text = "";
			x = 0.505265 * safezoneW + safezoneX;
			y = 0.509332 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn15: RscButton
		{
			idc = 2015;
			x = 0.505265 * safezoneW + safezoneX;
			y = 0.509332 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class apptext15: RscStructuredText
		{
			idc = 3015;
			text = "";
			x = 0.501563 * safezoneW + safezoneX;
			y = 0.55926 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 16-------------------
		class apppic16: RscPicture
		{
			idc = 1016;
			text = "";
			x = 0.544752 * safezoneW + safezoneX;
			y = 0.509286 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn16: RscButton
		{
			idc = 2016;
			x = 0.544752 * safezoneW + safezoneX;
			y = 0.509286 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class apptext16: RscStructuredText
		{
			idc = 3016;
			text = "";
			x = 0.542708 * safezoneW + safezoneX;
			y = 0.55926 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 17-------------------
		class apppic17: RscPicture
		{
			idc = 1017;
			text = "";
			x = 0.424739 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn17: RscButton
		{
			idc = 2017;
			x = 0.424739 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class apptext17: RscStructuredText
		{
			idc = 3017;
			text = "";
			x = 0.420312 * safezoneW + safezoneX;
			y = 0.637962 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 18-------------------
		class apppic18: RscPicture
		{
			idc = 1018;
			text = "";
			x = 0.464628 * safezoneW + safezoneX;
			y = 0.588092 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn18: RscButton
		{
			idc = 2018;
			x = 0.464628 * safezoneW + safezoneX;
			y = 0.588092 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class apptext18: RscStructuredText
		{
			idc = 3018;
			text = "";
			x = 0.460938 * safezoneW + safezoneX;
			y = 0.637963 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 19-------------------
		class apppic19: RscPicture
		{
			idc = 1019;
			text = "";
			x = 0.505156 * safezoneW + safezoneX;
			y = 0.588752 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn19: RscButton
		{
			idc = 2019;
			x = 0.505156 * safezoneW + safezoneX;
			y = 0.588752 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class apptext19: RscStructuredText
		{
			idc = 3019;
			text = "";
			x = 0.501042 * safezoneW + safezoneX;
			y = 0.637963 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//--------------APP 20-------------------
		class apppic20: RscPicture
		{
			idc = 1020;
			text = "";
			x = 0.545272 * safezoneW + safezoneX;
			y = 0.588752 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
		};
		class appbtn20: RscButton
		{
			idc = 2020;
			x = 0.545272 * safezoneW + safezoneX;
			y = 0.588752 * safezoneH + safezoneY;
			w = 0.0289583 * safezoneW;
			h = 0.0486297 * safezoneH;
			action = "if (count tabletapp_array > 19) then { [20] call fnc_selectapp; };";
			onMouseEnter = "if (count tabletapp_array > 19) then { ctrlSetText [1001, ((tabletapp_array select 0) select 3)]; };";
			onMouseExit = "if (count tabletapp_array > 19) then { ctrlSetText [1001, ((tabletapp_array select 0) select 2)]; };";
		};
		class apptext20: RscStructuredText
		{
			idc = 3020;
			text = "";
			x = 0.542292 * safezoneW + safezoneX;
			y = 0.63663 * safezoneH + safezoneY;
			w = 0.0366146 * safezoneW;
			h = 0.0255926 * safezoneH;
		};
	//---------------------------------------
	class synclayer: RscPicture
	{
		idc = 7767;
		text = "\A3L_Client2\cellphone\menus\synclayer\sync.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class donesyncpic: RscPicture
	{
		idc = 7768;
		text = "\A3L_Client2\cellphone\menus\synclayer\done.paa";
		x = 0.438125 * safezoneW + safezoneX;
		y = 0.434 * safezoneH + safezoneY;
		w = 0.122395 * safezoneW;
		h = 0.0277037 * safezoneH;
	};
	class donesyncbtn: RscButton
	{
		idc = 7769;
		text = "";
		x = 0.438125 * safezoneW + safezoneX;
		y = 0.434 * safezoneH + safezoneY;
		w = 0.122395 * safezoneW;
		h = 0.0277037 * safezoneH;
		action = "ctrlShow[7767,false]; ctrlShow[7768,false]; ctrlShow[7769,false];";
		onMouseEnter = "ctrlSetText [7768, ""\A3L_Client2\cellphone\menus\synclayer\donesel.paa""];";
		onMouseExit = "ctrlSetText [7768, ""\A3L_Client2\cellphone\menus\synclayer\done.paa""];";

	};
};
};

class emptyphone
{
idd = 12198;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen2 = 1; cellphoneopen = 0;";
onunload = "cellphoneopen2 = 0;";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "\A3L_Client2\cellphone\base\empty.paa";
		x = 0.416984 * safezoneW + safezoneX;
		y = 0.24898 * safezoneH + safezoneY;
		w = 0.163542 * safezoneW;
		h = 0.493629 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
};
};

class playermenu
{
idd = 12197;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen = 1; [] spawn life_fnc_p_updateMenu;";
onunload = "cellphoneopen = 0; [] spawn fnc_opencellp;";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};	
	//--------------APPSTUFF------------------
	class frame: RscPicture
	{
		idc = 5560;
		text = "\A3L_Client2\cellphone\menus\playermenu\frame.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	//--------------USEPIC------------------
	class usepicture: RscPicture
	{
		idc = 5900;
		text = "\A3L_Client2\cellphone\menus\playermenu\buttons\use.paa";
		x = 0.430937 * safezoneW + safezoneX;
		y = 0.516557 * safezoneH + safezoneY;
		w = 0.0232292 * safezoneW;
		h = 0.0210741 * safezoneH;
	};
	class usebutton: RscButton
	{
		idc = 5901;
		text = "\A3L_Client2\cellphone\menus\playermenu\buttons\use.paa";
		x = 0.430937 * safezoneW + safezoneX;
		y = 0.516557 * safezoneH + safezoneY;
		w = 0.0232292 * safezoneW;
		h = 0.0210741 * safezoneH;
		action = "[] spawn life_fnc_useItem;";
		onMouseEnter = "ctrlSetText [5900, ""\A3L_Client2\cellphone\menus\playermenu\buttons\usesel.paa""];";
		onMouseExit = "CtrlSetText [5900, ""\A3L_Client2\cellphone\menus\playermenu\buttons\use.paa""];";
	};
	//--------------DROPPIC------------------
	class droppicture: RscPicture
	{
		idc = 5910;
		text = "\A3L_Client2\cellphone\menus\playermenu\buttons\drop.paa";
		x = 0.45625 * safezoneW + safezoneX;
		y = 0.516667 * safezoneH + safezoneY;
		w = 0.02375 * safezoneW;
		h = 0.0210741 * safezoneH;
	};
	class dropbutton: RscButton
	{
		idc = 5911;
		text = "\A3L_Client2\cellphone\menus\playermenu\buttons\drop.paa";
		x = 0.45625 * safezoneW + safezoneX;
		y = 0.516667 * safezoneH + safezoneY;
		w = 0.02375 * safezoneW;
		h = 0.0210741 * safezoneH;
		action = "[] call life_fnc_removeItem;";
		onMouseEnter = "ctrlSetText [5910, ""\A3L_Client2\cellphone\menus\playermenu\buttons\dropsel.paa""];";
		onMouseExit = "CtrlSetText [5910, ""\A3L_Client2\cellphone\menus\playermenu\buttons\drop.paa""];";
	};
	//--------------GIVEPIC------------------
	class givepicture: RscPicture
	{
		idc = 5920;
		text = "\A3L_Client2\cellphone\menus\playermenu\buttons\give.paa";
		x = 0.545313 * safezoneW + safezoneX;
		y = 0.516667 * safezoneH + safezoneY;
		w = 0.0216667 * safezoneW;
		h = 0.0201482 * safezoneH;
	};
	class givebutton: RscButton
	{
		idc = 5921;
		text = "";
		x = 0.545313 * safezoneW + safezoneX;
		y = 0.516667 * safezoneH + safezoneY;
		w = 0.0216667 * safezoneW;
		h = 0.0201482 * safezoneH;
		action = "[] call life_fnc_giveItem";
		onMouseEnter = "ctrlSetText [5920, ""\A3L_Client2\cellphone\menus\playermenu\buttons\givesel.paa""];";
		onMouseExit = "CtrlSetText [5920, ""\A3L_Client2\cellphone\menus\playermenu\buttons\give.paa""];";
	};
	//--------------OTHER------------------
	class playerlist: RscCombo
	{
		idc = 5930;
		x = 0.497344 * safezoneW + safezoneX;
		y = 0.516593 * safezoneH + safezoneY;
		w = 0.0459375 * safezoneW;
		h = 0.0212408 * safezoneH;
	};
	class editamount: RscEdit
	{
		idc = 5931;
		x = 0.482292 * safezoneW + safezoneX;
		y = 0.517592 * safezoneH + safezoneY;
		w = 0.0126041 * safezoneW;
		h = 0.0207408 * safezoneH;
		sizeEx = 0.4 * GUI_GRID_H;
		text = "1";
	};
	class inventorylb: RscListbox
	{
		idc = 5932;
		x = 0.431407 * safezoneW + safezoneX;
		y = 0.330148 * safezoneH + safezoneY;
		w = 0.136563 * safezoneW;
		h = 0.183704 * safezoneH;
	};
	class licenselb: RscListbox
	{
		idc = 5933;
		x = 0.430937 * safezoneW + safezoneX;
		y = 0.584296 * safezoneH + safezoneY;
		w = 0.136042 * safezoneW;
		h = 0.133704 * safezoneH;
	};
};
};

class bankmenu
{
idd = 12196;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen = 1; [] spawn fnc_checkbalance;";
onunload = "cellphoneopen = 0; [] spawn fnc_opencellp;";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};	
	//--------------APPSTUFF------------------
	class frame: RscPicture
	{
		idc = 1200;
		text = "\A3L_Client2\cellphone\menus\bankmenu\frame.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class text1: RscText
	{
		idc = 2254;
		text = "Current Cash Balance:"; //--- ToDo: Localize;
		x = 0.432969 * safezoneW + safezoneX;
		y = 0.346 * safezoneH + safezoneY;
		w = 0.118594 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class text2: RscText
	{
		idc = 2255;
		text = "Current Bank Balance:"; //--- ToDo: Localize;
		x = 0.432969 * safezoneW + safezoneX;
		y = 0.401 * safezoneH + safezoneY;
		w = 0.118594 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class bank: RscText
	{
		idc = 2256;
		text = ""; //--- ToDo: Localize;
		x = 0.432969 * safezoneW + safezoneX;
		y = 0.357 * safezoneH + safezoneY;
		w = 0.118594 * safezoneW;
		h = 0.022 * safezoneH;
		sizeEx = 1.3 * GUI_GRID_H;
	};
	class cash: RscText
	{
		idc = 2257;
		text = ""; //--- ToDo: Localize;
		x = 0.432969 * safezoneW + safezoneX;
		y = 0.412 * safezoneH + safezoneY;
		w = 0.118594 * safezoneW;
		h = 0.022 * safezoneH;
		sizeEx = 1.3 * GUI_GRID_H;
	};

	//----------------buttons-----------------
		class give: RscPicture
	{
		idc = 6250;
		text = "\A3L_Client2\cellphone\menus\bankmenu\buttons\give.paa";
		x = 0.535989 * safezoneW + safezoneX;
		y = 0.510519 * safezoneH + safezoneY;
		w = 0.0313542 * safezoneW;
		h = 0.0188889 * safezoneH;
	};
		class givebuttons: RscButton
	{
		idc = 6251;
		text = "";
		x = 0.535989 * safezoneW + safezoneX;
		y = 0.510519 * safezoneH + safezoneY;
		w = 0.0313542 * safezoneW;
		h = 0.0188889 * safezoneH;
		action = "[] call life_fnc_giveMoney; closedialog 0;";
		onMouseEnter = "ctrlSetText [6250, ""\A3L_Client2\cellphone\menus\bankmenu\buttons\givesel.paa""];";
		onMouseExit = "CtrlSetText [6250, ""\A3L_Client2\cellphone\menus\bankmenu\buttons\give.paa""];";
	};
	//--------------end buttons---------------
	class amount: RscEdit
	{
		idc = 6253;
		x = 0.430803 * safezoneW + safezoneX;
		y = 0.51012 * safezoneH + safezoneY;
		w = 0.0386458 * safezoneW;
		h = 0.0207407 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
		text = "0";
	};
	class players: RscCombo
	{
		idc = 6254;
		x = 0.472362 * safezoneW + safezoneX;
		y = 0.51122 * safezoneH + safezoneY;
		w = 0.0626042 * safezoneW;
		h = 0.0188889 * safezoneH;
	};
};
};

class tagmenu
{
idd = 12298;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen = 1; [] spawn fnc_nametagedit;";
onunload = "cellphoneopen = 0; [] spawn fnc_opencellp;";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};	
	//--------------APPSTUFF------------------
class frame: RscPicture
{
	idc = 4501;
	text = "\A3L_Client2\cellphone\menus\tagmenu\frame.paa";
	x = 0.283437 * safezoneW + safezoneX;
	y = 0.159 * safezoneH + safezoneY;
	w = 0.433125 * safezoneW;
	h = 0.737 * safezoneH;
};
class savepic: RscPicture
{
	idc = 4502;
	text = "\A3L_Client2\cellphone\menus\tagmenu\buttons\save.paa";
	x = 0.430313 * safezoneW + safezoneX;
	y = 0.406444 * safezoneH + safezoneY;
	w = 0.136615 * safezoneW;
	h = 0.020037 * safezoneH;
};
class savebtn: RscButton
{
	idc = 4502;
	text = "";
	x = 0.430313 * safezoneW + safezoneX;
	y = 0.406444 * safezoneH + safezoneY;
	w = 0.136615 * safezoneW;
	h = 0.020037 * safezoneH;
	action = "[] spawn fnc_nametagupdate";
	onMouseEnter = "ctrlSetText [6250, ""\A3L_Client2\cellphone\menus\tagmenu\buttons\savesel.paa""];";
	onMouseExit = "CtrlSetText [6250, ""\A3L_Client2\cellphone\menus\tagmenu\buttons\save.paa""];";
};
class colorlistbox: RscListbox
{
	idc = 2100;
	x = 0.430729 * safezoneW + safezoneX;
	y = 0.473148 * safezoneH + safezoneY;
	w = 0.136562 * safezoneW;
	h = 0.0679629 * safezoneH;
};
class ganglistbox: RscListbox
{
	idc = 2101;
	x = 0.43125 * safezoneW + safezoneX;
	y = 0.587037 * safezoneH + safezoneY;
	w = 0.136562 * safezoneW;
	h = 0.0679629 * safezoneH;
};
class RscText_1000: RscText
{
	idc = 4505;
	text = "Name Colour Preview:"; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.134062 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.6 * GUI_GRID_H;
};
class RscText_1001: RscText
{
	idc = 4506;
	text = "Name Gang Preview:"; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.139219 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.6 * GUI_GRID_H;
};
class playername: RscStructuredText
{
	idc = 1001;
	text = ""; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.344148 * safezoneH + safezoneY;
	w = 0.137708 * safezoneW;
	h = 0.0184074 * safezoneH;
	sizeEx = 0.8 * GUI_GRID_H;
};
class gangname: RscStructuredText
{
	idc = 1002;
	text = ""; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.138698 * safezoneW;
	h = 0.0137778 * safezoneH;
	sizeEx = 0.8 * GUI_GRID_H;
};
};
};

class callmenu
{
idd = 12194;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; uiNamespace setVariable [""call_array"", []]; cellphoneopen = 1;";
onunload = "cellphoneopen = 0; [] spawn fnc_opencellp;";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};	
	//--------------APPSTUFF------------------
	class RscPicture_1200: RscPicture
	{
		idc = 1200;
		text = "\A3L_Client2\cellphone\menus\callmenu\frame.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	//--------------Callbutton------------------
	class callpicture: RscPicture
	{
		idc = 6641;
		text = "\A3L_Client2\cellphone\menus\callmenu\buttons\call.paa";
		x = 0.428595 * safezoneW + safezoneX;
		y = 0.685037 * safezoneH + safezoneY;
		w = 0.140312 * safezoneW;
		h = 0.0364814 * safezoneH;
	};
	class callbutton: RscButton
	{
		idc = 6642;
		text = "";
		x = 0.428595 * safezoneW + safezoneX;
		y = 0.685037 * safezoneH + safezoneY;
		w = 0.140312 * safezoneW;
		h = 0.0364814 * safezoneH;
		action = "";
		onMouseEnter = "ctrlSetText [6641, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\call.paa""];";
		onMouseExit = "CtrlSetText [6641, ""\A3L_Client2\cellphone\menus\callmenu\buttons\call.paa""];";
	};
	//--------------Button 1------------------
class onepicture: RscPicture
{
	idc = 6643;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\one.paa";
	x = 0.429219 * safezoneW + safezoneX;
	y = 0.413074 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
};
class onebutton: RscButtonSilent
{
	idc = 6644;
	text = "";
	x = 0.429219 * safezoneW + safezoneX;
	y = 0.413074 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
	action = "[1] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6643, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\one.paa""];";
	onMouseExit = "CtrlSetText [6643, ""\A3L_Client2\cellphone\menus\callmenu\buttons\one.paa""];";
};
	//--------------Button 2------------------
class twopicture: RscPicture
{
	idc = 6645;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\two.paa";
	x = 0.478125 * safezoneW + safezoneX;
	y = 0.412963 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
};
class twobutton: RscButtonSilent
{
	idc = 6646;
	text = "";
	x = 0.478125 * safezoneW + safezoneX;
	y = 0.412963 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
	action = "[2] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6645, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\two.paa""];";
	onMouseExit = "CtrlSetText [6645, ""\A3L_Client2\cellphone\menus\callmenu\buttons\two.paa""];";
};
	//--------------Button 3------------------
class threepicture: RscPicture
{
	idc = 6647;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\three.paa";
	x = 0.527604 * safezoneW + safezoneX;
	y = 0.412963 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
};
class threebutton: RscButtonSilent
{
	idc = 6648;
	text = "";
	x = 0.527604 * safezoneW + safezoneX;
	y = 0.412963 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
	action = "[3] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6647, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\three.paa""];";
	onMouseExit = "CtrlSetText [6647, ""\A3L_Client2\cellphone\menus\callmenu\buttons\three.paa""];";
};
	//--------------Button 4------------------
class fourpicture: RscPicture
{
	idc = 6649;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\four.paa";
	x = 0.429323 * safezoneW + safezoneX;
	y = 0.476148 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
};
class fourbutton: RscButtonSilent
{
	idc = 6650;
	text = "";
	x = 0.429323 * safezoneW + safezoneX;
	y = 0.476148 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
	action = "[4] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6649, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\four.paa""];";
	onMouseExit = "CtrlSetText [6649, ""\A3L_Client2\cellphone\menus\callmenu\buttons\four.paa""];";
};
	//--------------Button 5------------------
class fivepicture: RscPicture
{
	idc = 6651;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\five.paa";
	x = 0.478281 * safezoneW + safezoneX;
	y = 0.476148 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
};
class fivebutton: RscButtonSilent
{
	idc = 6652;
	text = "";
	x = 0.478281 * safezoneW + safezoneX;
	y = 0.476148 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
	action = "[5] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6651, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\five.paa""];";
	onMouseExit = "CtrlSetText [6651, ""\A3L_Client2\cellphone\menus\callmenu\buttons\five.paa""];";
};
	//--------------Button 6------------------
class sixpicture: RscPicture
{
	idc = 6653;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\six.paa";
	x = 0.527604 * safezoneW + safezoneX;
	y = 0.475926 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
};
class sixbutton: RscButtonSilent
{
	idc = 6654;
	text = "";
	x = 0.527604 * safezoneW + safezoneX;
	y = 0.475926 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
	action = "[6] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6653, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\six.paa""];";
	onMouseExit = "CtrlSetText [6653, ""\A3L_Client2\cellphone\menus\callmenu\buttons\six.paa""];";
};
	//--------------Button 7------------------
class sevenpicture: RscPicture
{
	idc = 6655;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\seven.paa";
	x = 0.428854 * safezoneW + safezoneX;
	y = 0.538333 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
};
class sevenbutton: RscButtonSilent
{
	idc = 6656;
	text = "";
	x = 0.428854 * safezoneW + safezoneX;
	y = 0.538333 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
	action = "[7] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6655, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\seven.paa""];";
	onMouseExit = "CtrlSetText [6655, ""\A3L_Client2\cellphone\menus\callmenu\buttons\seven.paa""];";
};
	//--------------Button 8------------------
class eightpicture: RscPicture
{
	idc = 6657;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\eight.paa";
	x = 0.478333 * safezoneW + safezoneX;
	y = 0.53763 * safezoneH + safezoneY;
	w = 0.0412499 * safezoneW;
	h = 0.0504813 * safezoneH;
};
class eightbutton: RscButtonSilent
{
	idc = 6658;
	text = "";
	x = 0.478333 * safezoneW + safezoneX;
	y = 0.53763 * safezoneH + safezoneY;
	w = 0.0412499 * safezoneW;
	h = 0.0504813 * safezoneH;
	action = "[8] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6657, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\eight.paa""];";
	onMouseExit = "CtrlSetText [6657, ""\A3L_Client2\cellphone\menus\callmenu\buttons\eight.paa""];";
};
	//--------------Button 9------------------
class ninepicture: RscPicture
{
	idc = 6659;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\nine.paa";
	x = 0.527082 * safezoneW + safezoneX;
	y = 0.537963 * safezoneH + safezoneY;
	w = 0.0422915 * safezoneW;
	h = 0.0495555 * safezoneH;
};
class ninebutton: RscButtonSilent
{
	idc = 6661;
	text = "";
	x = 0.527082 * safezoneW + safezoneX;
	y = 0.537963 * safezoneH + safezoneY;
	w = 0.0422915 * safezoneW;
	h = 0.0495555 * safezoneH;
	action = "[9] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6659, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\nine.paa""];";
	onMouseExit = "CtrlSetText [6659, ""\A3L_Client2\cellphone\menus\callmenu\buttons\nine.paa""];";
};
	//--------------Button 0------------------
class zeropicture: RscPicture
{
	idc = 6662;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\zero.paa";
	x = 0.478126 * safezoneW + safezoneX;
	y = 0.6 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
};
class zerobutton: RscButtonSilent
{
	idc = 6663;
	text = "";
	x = 0.478126 * safezoneW + safezoneX;
	y = 0.6 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
	action = "[0] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6662, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\zero.paa""];";
	onMouseExit = "CtrlSetText [6662, ""\A3L_Client2\cellphone\menus\callmenu\buttons\zero.paa""];";
};
	//--------------star------------------
class starpicture: RscPicture
{
	idc = 6664;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\star.paa";
	x = 0.428906 * safezoneW + safezoneX;
	y = 0.599815 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
};
class starbutton: RscButtonSilent
{
	idc = 6665;
	text = "";
	x = 0.428906 * safezoneW + safezoneX;
	y = 0.599815 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0495554 * safezoneH;
	action = "[10] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6664, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\star.paa""];";
	onMouseExit = "CtrlSetText [6664, ""\A3L_Client2\cellphone\menus\callmenu\buttons\star.paa""];";
};
	//--------------Hashtag------------------
class hashpicture: RscPicture
{
	idc = 6666;
	text = "\A3L_Client2\cellphone\menus\callmenu\buttons\hash.paa";
	x = 0.527864 * safezoneW + safezoneX;
	y = 0.599926 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0504814 * safezoneH;
};
class hashbutton: RscButtonSilent
{
	idc = 6667;
	text = "";
	x = 0.527864 * safezoneW + safezoneX;
	y = 0.599926 * safezoneH + safezoneY;
	w = 0.0417707 * safezoneW;
	h = 0.0504814 * safezoneH;
	action = "[11] spawn fnc_callmenu;";
	onMouseEnter = "ctrlSetText [6666, ""\A3L_Client2\cellphone\menus\callmenu\buttons\selected\hash.paa""];";
	onMouseExit = "CtrlSetText [6666, ""\A3L_Client2\cellphone\menus\callmenu\buttons\hash.paa""];";
};

class Structuredtext: RscStructuredText
{
	idc = 6668;
	x = 0.430391 * safezoneW + safezoneX;
	y = 0.33764 * safezoneH + safezoneY;
	w = 0.136979 * safezoneW;
	h = 0.0302221 * safezoneH;
};
};
};

class messagemenu
{
idd = 12193;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen = 1; [""0""] spawn life_fnc_cellphone; smsmenuisopen = 1;";
onunload = "cellphoneopen = 0; [] spawn fnc_opencellp; smsmenuisopen = 0;";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};	
	//--------------APPSTUFF------------------
	class frame: RscPicture
	{
		idc = 8870;
		text = "\A3L_Client2\cellphone\menus\messagemenu\frame.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class listbox: RscListbox
	{
		idc = 8871;
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.445926 * safezoneH + safezoneY;
		w = 0.136563 * safezoneW;
		h = 0.0901852 * safezoneH;
		onLbSelChanged = [] call fnc_smsselected;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class edit: RscEdit
	{
		idc = 8872;
		x = 0.430416 * safezoneW + safezoneX;
		y = 0.586148 * safezoneH + safezoneY;
		w = 0.137604 * safezoneW;
		h = 0.108704 * safezoneH;
	};
	class sendpic: RscPicture
	{
		idc = 8873;
		text = "\A3L_Client2\cellphone\menus\messagemenu\send.paa";
		x = 0.535573 * safezoneW + safezoneX;
		y = 0.697074 * safezoneH + safezoneY;
		w = 0.0330729 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class sendbtn: RscButton
	{
		idc = 8874;
		text = "";
		x = 0.535573 * safezoneW + safezoneX;
		y = 0.697074 * safezoneH + safezoneY;
		w = 0.0330729 * safezoneW;
		h = 0.022 * safezoneH;
		action = "[] call fnc_sms_textmsg; closedialog 0;";
		onMouseEnter = "ctrlSetText [8873, ""\A3L_Client2\cellphone\menus\messagemenu\sendsel.paa""];";
		onMouseExit = "CtrlSetText [8873, ""\A3L_Client2\cellphone\menus\messagemenu\send.paa""];";
	};
	class numberedit: RscEdit
	{
		idc = 8876;
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.697074 * safezoneH + safezoneY;
		w = 0.102708 * safezoneW;
		h = 0.0207408 * safezoneH;
	};
	class receivedmsg: RscStructuredText
	{
		idc = 8875;
		text = "";
		x = 0.430781 * safezoneW + safezoneX;
		y = 0.33037 * safezoneH + safezoneY;
		w = 0.137083 * safezoneW;
		h = 0.113333 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
};
};

class keymenu
{
idd = 2700;
name= "life_key_chain";
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen = 1; [] spawn life_fnc_keyMenu;";
onunload = "cellphoneopen = 0; [] spawn fnc_opencellp;";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};	
	//--------------APPSTUFF------------------
		class frame: RscPicture
	{
		idc = 1200;
		text = "\A3L_Client2\cellphone\menus\keysmenu\frame.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class combolist: RscCombo
	{
		idc = 2702;
		x = 0.430906 * safezoneW + safezoneX;
		y = 0.4714 * safezoneH + safezoneY;
		w = 0.10375 * safezoneW;
		h = 0.0198148 * safezoneH;
	};
	class givekeys: RscPicture
	{
		idc = 1201;
		text = "\A3L_Client2\cellphone\menus\keysmenu\givekeys.paa";
		x = 0.536506 * safezoneW + safezoneX;
		y = 0.4714 * safezoneH + safezoneY;
		w = 0.031875 * safezoneW;
		h = 0.0207407 * safezoneH;
	};
	class givebutn: RscButton
	{
		idc = 1201;
		text = "";
		x = 0.536506 * safezoneW + safezoneX;
		y = 0.4714 * safezoneH + safezoneY;
		w = 0.031875 * safezoneW;
		h = 0.0207407 * safezoneH;
		action = "[] call life_fnc_keyGive";
		onMouseEnter = "ctrlSetText [1201, ""\A3L_Client2\cellphone\menus\keysmenu\givekeys.paa""];";
		onMouseExit = "CtrlSetText [1201, ""\A3L_Client2\cellphone\menus\keysmenu\givekeyssel.paa""];";
	};
	class listbox: RscListbox
	{
		idc = 2701;
		x = 0.4307 * safezoneW + safezoneX;
		y = 0.3306 * safezoneH + safezoneY;
		w = 0.136041 * safezoneW;
		h = 0.092963 * safezoneH;
		sizeEx = 0.6 * GUI_GRID_H;
	};

};
};

class newsettingsmenu
{
idd = 7798;
name= "life_key_chain";
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen = 1; [] spawn fnc_opensettingsmnu;";
onunload = "cellphoneopen = 0; [] spawn fnc_opencellp; if (!isNull logicpreview) then { deletevehicle logicpreview };";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};	
	//--------------APPSTUFF------------------
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zannaza, v1.063, #Valywo)
////////////////////////////////////////////////////////

class RscText_1000: RscText
{
	idc = 1000;
	text = "Settings"; //--- ToDo: Localize;
	x = 0.469062 * safezoneW + safezoneX;
	y = 0.302 * safezoneH + safezoneY;
	w = 0.055677 * safezoneW;
	h = 0.0284815 * safezoneH;
	sizeEx = 1.3 * GUI_GRID_H;
};
class name: RscText
{
	idc = 1001;
	text = ""; //--- ToDo: Localize;
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.357 * safezoneH + safezoneY;
	w = 0.144375 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.6 * GUI_GRID_H;
};
class phone: RscText
{
	idc = 1002;
	text = ""; //--- ToDo: Localize;
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.144375 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.6 * GUI_GRID_H;
};
class prepaid: RscText
{
	idc = 1003;
	text = ""; //--- ToDo: Localize;
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.39 * safezoneH + safezoneY;
	w = 0.12375 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.6 * GUI_GRID_H;
};
class ringtonetext: RscText
{
	idc = 1004;
	text = "Ringtone:"; //--- ToDo: Localize;
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.0464063 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.6 * GUI_GRID_H;
};
class ringtonelb: RscCombo
{
	idc = 2100;
	x = 0.469062 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.022 * safezoneH;
};
class smstone: RscText
{
	idc = 1005;
	text = "SMStone:"; //--- ToDo: Localize;
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0464063 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.6 * GUI_GRID_H;
};
class smstonelb: RscCombo
{
	idc = 2101;
	x = 0.469062 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.022 * safezoneH;
};
class soundmodetext: RscText
{
	idc = 1006;
	text = "Soundmode:"; //--- ToDo: Localize;
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.423 * safezoneH + safezoneY;
	w = 0.0464063 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.6 * GUI_GRID_H;
};
class soundmodelb: RscCombo
{
	idc = 2102;
	x = 0.469062 * safezoneW + safezoneX;
	y = 0.423 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.022 * safezoneH;
};
class backgroundtxt: RscText
{
	idc = 1007;
	text = "Background:"; //--- ToDo: Localize;
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.0464063 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.6 * GUI_GRID_H;
};
class backgroundlb: RscCombo
{
	idc = 2103;
	x = 0.469062 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.022 * safezoneH;
	onLbSelChanged = [] call fnc_settingsbg;
};
class RscText_1008: RscText
{
	idc = 1008;
	text = "Beta Menu"; //--- ToDo: Localize;
	x = 0.536094 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
};
class ringtoneprev: RscButtonBlue
{
	idc = 1600;
	x = 0.556719 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.0103646 * safezoneW;
	h = 0.0191111 * safezoneH;
	action = [] call fnc_settsrtprev;
};
class smstoneprev: RscButtonBlue
{
	idc = 1601;
	x = 0.556719 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0103646 * safezoneW;
	h = 0.0191111 * safezoneH;
	action = [] call fnc_settssmstprev;
};
class prepaidinfo: RscButtonBlue
{
	idc = 1602;
	x = 0.551047 * safezoneW + safezoneX;
	y = 0.38714 * safezoneH + safezoneY;
	w = 0.0103646 * safezoneW;
	h = 0.0191111 * safezoneH;
};
class save: RscButtonBlue
{
	idc = 1603;
	text = "save"; //--- ToDo: Localize;
	x = 0.432969 * safezoneW + safezoneX;
	y = 0.555 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.033 * safezoneH;
	action = [] call fnc_savesettings;
};
class cancel: RscButtonBlue
{
	idc = 1604;
	text = "cancel"; //--- ToDo: Localize;
	x = 0.505156 * safezoneW + safezoneX;
	y = 0.555 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0;";
};
};
};

class contactsmenu
{
idd = 7732;
name= "life_key_chain";
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen = 1; [0] spawn fnc_opencontacts;";
onunload = "cellphoneopen = 0; [] spawn fnc_opencellp; if (!isNull logicpreview) then { deletevehicle logicpreview };";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};	
	//--------------APPSTUFF------------------
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zannaza, v1.063, #Valywo)
////////////////////////////////////////////////////////
class contactstext: RscText
{
	idc = 1000;
	text = "Contacts"; //--- ToDo: Localize;
	x = 0.417499 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.165 * safezoneW;
	h = 0.044 * safezoneH;
	style = ST_CENTER;  // defined constant
	sizeEx = 1.2 * GUI_GRID_H;
};
class listbox: RscListbox
{
	idc = 1500;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.149531 * safezoneW;
	h = 0.132 * safezoneH;
	sizeEx = 0.9 * GUI_GRID_H;
	onLbSelChanged = [] call fnc_contactsel;
};
class amountcontacts: RscText
{
	idc = 1001;
	text = "20/20"; //--- ToDo: Localize;
	x = 0.530937 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0464063 * safezoneW;
	h = 0.011 * safezoneH;
	style = ST_RIGHT;  // defined constant
	sizeEx = 0.6 * GUI_GRID_H;
};
class callbtn: RscButtonBlue
{
	idc = 1600;
	text = "Call"; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.489 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
	action = "[0] call fnc_contactcallsms";
};
class textbtn: RscButtonBlue
{
	idc = 1601;
	text = "Text"; //--- ToDo: Localize;
	x = 0.479375 * safezoneW + safezoneX;
	y = 0.489 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
	action = "[1] call fnc_contactcallsms";
};
class removebtn: RscButtonBlue
{
	idc = 1602;
	text = "remove"; //--- ToDo: Localize;
	x = 0.530937 * safezoneW + safezoneX;
	y = 0.489 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
	action = "[] call fnc_contactrem";
};
class Nameedit: RscEdit
{
	idc = 1400;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.522 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.9 * GUI_GRID_H;
};
class cellphonedit: RscEdit
{
	idc = 1401;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.544 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.9 * GUI_GRID_H;
};
class notesedit: RscEdit
{
	idc = 1403;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.588 * safezoneH + safezoneY;
	w = 0.144375 * safezoneW;
	h = 0.099 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
};
class RscText_1002: RscText
{
	idc = 1002;
	text = "notes"; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
};
class RscText_1003: RscText
{
	idc = 1003;
	text = "150/150"; //--- ToDo: Localize;
	x = 0.515469 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
	style = ST_RIGHT;  // defined constant
};
class RscButton_1603: RscButtonBlue
{
	idc = 1603;
	text = "UPDATE"; //--- ToDo: Localize;
	x = 0.438125 * safezoneW + safezoneX;
	y = 0.698 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
	action = "[] call fnc_contactupd";
};
class RscButton_1604: RscButtonBlue
{
	idc = 1604;
	text = "CREATE"; //--- ToDo: Localize;
	x = 0.515469 * safezoneW + safezoneX;
	y = 0.698 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
	action = "[] call fnc_contactadd";
};
class RscText_1004: RscText
{
	idc = 1004;
	text = "Name"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.522 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
};
class RscText_1005: RscText
{
	idc = 1005;
	text = "Cellphone number"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.544 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.022 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
};
};
};

class skillsmenu
{
idd = 7832;
name= "life_key_chain";
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""cellphone"", _this select 0]; cellphoneopen = 1; [0] spawn fnc_openskills;";
onunload = "cellphoneopen = 0; [] spawn fnc_opencellp;";
objects[] = { };
class controls {
	class mainframe: RscPicture
	{
		idc = 5520;
		text = "\A3L_Client2\cellphone\base\blackphone.paa";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class background: RscPicture
	{
		idc = 5521;
		text = "";
		x = 0.283437 * safezoneW + safezoneX;
		y = 0.159 * safezoneH + safezoneY;
		w = 0.433125 * safezoneW;
		h = 0.737 * safezoneH;
	};
	class backbutton: RscButton
	{
		idc = 5522;
		text = "";
		x = 0.486078 * safezoneW + safezoneX;
		y = 0.75498 * safezoneH + safezoneY;
		w = 0.02625 * safezoneW;
		h = 0.0466666 * safezoneH;
		action = "closedialog 0;";
	};
	//--------------HEADER------------------
	class batterypic: RscPicture
	{
		idc = 5523;
		text = "";
		x = 0.564427 * safezoneW + safezoneX;
		y = 0.252444 * safezoneH + safezoneY;
		w = 0.0144271 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class precentage: RscText
	{
		idc = 5524;
		text = ""; //--- ToDo: Localize;
		x = 0.544427 * safezoneW + safezoneX;
		y = 0.254518 * safezoneH + safezoneY;
		w = 0.0195833 * safezoneW;
		h = 0.011 * safezoneH;
		style = ST_RIGHT;  // defined constant
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class time: RscText
	{
		idc = 5525;
		text = ""; //--- ToDo: Localize;
		x = 0.508229 * safezoneW + safezoneX;
		y = 0.254296 * safezoneH + safezoneY;
		w = 0.0360937 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connection: RscText
	{
		idc = 5526;
		text = "Z-MOBILE 4G"; //--- ToDo: Localize;
		x = 0.445835 * safezoneW + safezoneX;
		y = 0.254778 * safezoneH + safezoneY;
		w = 0.061875 * safezoneW;
		h = 0.011 * safezoneH;
		sizeEx = 0.7 * GUI_GRID_H;
	};
	class connectdot1: RscPicture
	{
		idc = 5527;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.419792 * safezoneW + safezoneX;
		y = 0.255556 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot2: RscPicture
	{
		idc = 5528;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.42552 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot3: RscPicture
	{
		idc = 5529;
		text = "\A3L_Client2\cellphone\base\connection.paa";
		x = 0.431406 * safezoneW + safezoneX;
		y = 0.255222 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot4: RscPicture
	{
		idc = 5530;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.436979 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};
	class connectdot5: RscPicture
	{
		idc = 5531;
		text = "\A3L_Client2\cellphone\base\noconnection.paa";
		x = 0.442708 * safezoneW + safezoneX;
		y = 0.255555 * safezoneH + safezoneY;
		w = 0.004125 * safezoneW;
		h = 0.00637039 * safezoneH;
	};	
	//--------------APPSTUFF------------------
	////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zannaza, v1.063, #Cawuta)
////////////////////////////////////////////////////////
class pic: RscPicture
{
	idc = 61201;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.422656 * safezoneW + safezoneX;
	y = 0.621 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.099 * safezoneH;
};
class RscFrame_1800: RscFrame
{
	idc = 61800;
	x = 0.489687 * safezoneW + safezoneX;
	y = 0.632 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.077 * safezoneH;
};
class leveltext: RscText
{
	idc = 61000;
	text = ""; //--- ToDo: Localize;
	x = 0.489687 * safezoneW + safezoneX;
	y = 0.637444 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
};
class currentexptext: RscText
{
	idc = 61001;
	text = "Current EXP:"; //--- ToDo: Localize;
	x = 0.488645 * safezoneW + safezoneX;
	y = 0.665 * safezoneH + safezoneY;
	w = 0.0464063 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
};
class remainingtext: RscText
{
	idc = 61002;
	text = "Remaining:"; //--- ToDo: Localize;
	x = 0.489166 * safezoneW + safezoneX;
	y = 0.679704 * safezoneH + safezoneY;
	w = 0.0464063 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
};
class listbox: RscListbox
{
	idc = 61500;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.308 * safezoneH;
	onLbSelChanged = [] call fnc_skillsupdate;
};
class currentexpnum: RscText
{
	idc = 61003;
	text = ""; //--- ToDo: Localize;
	x = 0.534999 * safezoneW + safezoneX;
	y = 0.664889 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
	style = ST_RIGHT;  // defined constant
};
class remainingnum: RscText
{
	idc = 61004;
	text = ""; //--- ToDo: Localize;
	x = 0.535573 * safezoneW + safezoneX;
	y = 0.679704 * safezoneH + safezoneY;
	w = 0.0402604 * safezoneW;
	h = 0.011 * safezoneH;
	sizeEx = 0.7 * GUI_GRID_H;
	style = ST_RIGHT;  // defined constant

};
class progressbar: RscProgress
{
	idc = 51251;
	type = CT_PROGRESS;
	style = 0;
	colorFrame[] = {0.149,0.149,0.149,1};
	colorBar[] = {0.173,0.651,0,1};
	text = "TEST:"; //--- ToDo: Localize;
	sizeEx = 0.6 * GUI_GRID_H;
	x = 0.492266 * safezoneW + safezoneX;
	y = 0.69338 * safezoneH + safezoneY;
	w = 0.0814583 * safezoneW;
	h = 0.011 * safezoneH;
};
class skillname: RscText
{
	idc = 61005;
	text = ""; //--- ToDo: Localize;
	x = 0.489687 * safezoneW + safezoneX;
	y = 0.61 * safezoneH + safezoneY;
	w = 0.0871355 * safezoneW;
	h = 0.0192223 * safezoneH;
	style = ST_CENTER;  // defined constant
};
};
};

