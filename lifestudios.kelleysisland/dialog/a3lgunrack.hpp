#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)
class A3L_GunRack{
idd=-1;
controls[]=
{
	RscPicture_1200,
	RscListbox_1501,
	RscListbox_1500,
	RscButton_1600,
	RscButton_1601
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Ryhyka)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "textures\Menu_GunRack.paa";
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = -3 * GUI_GRID_H + GUI_GRID_Y;
	w = 42 * GUI_GRID_W;
	h = 31.5 * GUI_GRID_H;
};
class RscListbox_1501: RscListBoxHidden
{
	idc = 1501;

	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 29.5 * GUI_GRID_W;
	h = 9.5 * GUI_GRID_H;
};
class RscListbox_1500: RscListBoxHidden
{
	idc = 1500;

	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 29.5 * GUI_GRID_W;
	h = 9.5 * GUI_GRID_H;
};
class RscButton_1600: RscButtonHidden
{
	idc = 1600;
	action = "[lbCurSel 1500] call life_fnc_StoreGunRack";

	x = 31.85 * GUI_GRID_W + GUI_GRID_X;
	y = 2.33 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscButton_1601: RscButtonHidden
{
	idc = 1601;
	action = "[lbCurSel 1501] call life_fnc_TakeGunRack";

	x = 31.8 * GUI_GRID_W + GUI_GRID_X;
	y = 4.21 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
}