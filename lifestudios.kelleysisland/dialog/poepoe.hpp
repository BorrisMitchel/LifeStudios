#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)
class A3L_PolicePC {
	idd=-1;
	controls[]=
	{
		RscPicture_1200,
		RscButton_1600,
		RscButton_1601,
		RscButton_1602,
		RscButton_1603
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Doxumy)
////////////////////////////////////////////////////////

class RscButton_1600: RscButtonHidden
{
	idc = 1600;
	action = "closeDialog 0;if(!createDialog 'A3L_PlateLookup')exitWith{};";

	x = 20.55 * GUI_GRID_W + GUI_GRID_X;
	y = 5.37 * GUI_GRID_H + GUI_GRID_Y;
	w = 13.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscButton_1601: RscButtonHidden
{
	idc = 1601;
	action = "closeDialog 0;if(!createDialog 'A3L_PoliceDB')exitWith{};";

	x = 20.59 * GUI_GRID_W + GUI_GRID_X;
	y = 8.55 * GUI_GRID_H + GUI_GRID_Y;
	w = 13.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscButton_1602: RscButtonHidden
{
	idc = 1602;
	action = "closedialog 0; [] call life_fnc_DMDgZ2zW1lj5AeDg;";

	x = 20.55 * GUI_GRID_W + GUI_GRID_X;
	y = 14.54 * GUI_GRID_H + GUI_GRID_Y;
	w = 13.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscButton_1603: RscButtonHidden
{
	idc = 1603;
	action = "closeDialog 0;if(!createDialog 'A3L_WarrantsMenu')exitWith{};";

	x = 20.55 * GUI_GRID_W + GUI_GRID_X;
	y = 11.45 * GUI_GRID_H + GUI_GRID_Y;
	w = 13.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscPicture_1200: RscPicture
{
	idc = 1200;

	text = "textures\Home.paa";
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = -3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 42 * GUI_GRID_W;
	h = 31.5 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


};
class A3L_DBAccess {
			idd=-1;
		controls[]=
		{
			IGUIBack_2200,
			RscButton_1600,
			RscButton_1601,
			RscButton_1602,
			RscButton_1603,
			RscButton_1604,
			RscText_1000
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Pizyvy)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 18 * GUI_GRID_W;
			h = 18.5 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Warrant Database"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "DMV Database"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Person Database"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Reports Database"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "Close"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Database Access Menu"; //--- ToDo: Localize;
			x = 15 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

};
class A3L_LookupMenu{
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscButton_1600,
		RscButton_1601,
		RscButton_1602
	};

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 10 * GUI_GRID_W + GUI_GRID_X;
		y = 3 * GUI_GRID_H + GUI_GRID_Y;
		w = 20 * GUI_GRID_W;
		h = 9.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Warrants"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 15 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action = "[] call A3L_Police_LookupWarrants;closeDialog 0;";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "License Plate Lookup"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 8 * GUI_GRID_H + GUI_GRID_Y;
		w = 15 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action = "[] call A3L_Police_LookupPlate;closeDialog 0;";
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Close"; //--- ToDo: Localize;
		x = 16 * GUI_GRID_W + GUI_GRID_X;
		y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 7 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action = "closeDialog 0;";
	};
};

class A3L_WarrantsMenu{
	idd=-1;
	onUnLoad = "[] call A3L_PD_ClearVariables";
	controls[]=
	{
		RscPicture_1201,
		RscEdit_1400,
		RscButton_1600,
		RscListbox_1500,
		RscButton_1601,
		RscButton_1602,
		RscButton_1603
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Judagy)
////////////////////////////////////////////////////////

class RscPicture_1201: RscPicture
{
	idc = 1201;
	text = "textures\PD_WarrantLookup.paa";
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = -3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 42 * GUI_GRID_W;
	h = 31.5 * GUI_GRID_H;
};
class RscEdit_1400: RscEdit
{
	idc = 1400;

	x = 6 * GUI_GRID_W + GUI_GRID_X;
	y = 3.58 * GUI_GRID_H + GUI_GRID_Y;
	w = 23.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscButton_1600: RscButtonHidden
{
	idc = 1600;
	action = "[ctrlText 1400] call life_fnc_Hj5Rv5F3bdQrGy59";

	x = 30.3 * GUI_GRID_W + GUI_GRID_X;
	y = 3.33 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscListbox_1500: RscListBoxHiddenWhite
{
	idc = 1500;

	x = 11.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 26 * GUI_GRID_W;
	h = 13 * GUI_GRID_H;
};
class RscButton_1601: RscButtonHidden
{
	idc = 1601;
	action = "[lbCurSel 1500] call life_fnc_x7vIS9LlgGPkTILl;";

	x = 3.15 * GUI_GRID_W + GUI_GRID_X;
	y = 13.25 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscButton_1602: RscButtonHidden
{
	idc = 1602;
	action = "[lbCurSel 1500] call life_fnc_jqGHO5iLXSm9ZTN9;";

	x = 3.26 * GUI_GRID_W + GUI_GRID_X;
	y = 15.16 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscButton_1603: RscButtonHidden
{
	idc = 1603;
	action = "[lbCurSel 1500] call life_fnc_kZQaUJyuq6XQ0H8p;";

	x = 3.18 * GUI_GRID_W + GUI_GRID_X;
	y = 17.08 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};

class A3L_WarrantsSubmit{
	idd=-1;
	
	controls[]=
	{
		RscPicture_1200,
		RscEdit_1400,
		RscEdit_1401,
		RscEdit_1402,
		RscCombo_2100,
		RscCombo_2101,
		RscButton_1600
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Fabozi)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "textures\PD_WarrantSubmit.paa";
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = -3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 42 * GUI_GRID_W;
	h = 31.5 * GUI_GRID_H;
};
class RscEdit_1400: RscEdit
{
	idc = 1400;

	x = 3 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 34 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscEdit_1401: RscEdit
{
	idc = 1401;

	x = 3 * GUI_GRID_W + GUI_GRID_X;
	y = 9.29 * GUI_GRID_H + GUI_GRID_Y;
	w = 34 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscEdit_1402: RscEdit
{
	idc = 1402;

	x = 3.05 * GUI_GRID_W + GUI_GRID_X;
	y = 11.75 * GUI_GRID_H + GUI_GRID_Y;
	w = 34 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscCombo_2100: RscCombo
{
	idc = 2100;

	x = 3 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 16 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscCombo_2101: RscCombo
{
	idc = 2101;

	x = 20 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 17 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscButton_1600: RscButtonHidden
{
	idc = 1600;
	action = "[ctrlText 1400,ctrlText 1401,ctrlText 1402,lbCurSel 2100,lbCurSel 2101] call life_fnc_q2dNCeyETREG0cRT;closeDialog 0;";

	x = 15.65 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


}