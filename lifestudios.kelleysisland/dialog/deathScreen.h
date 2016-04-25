class DeathScreenciv
{
	idd = 7300;
	name = "Life_Death_Screen";
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{
	};
	
	class Controls
	{
		class MedicsOnline : Life_RscText
		{
			idc = 7304;
			colorBackground[] = {0,0,0,0};
			text = "Medics Online: 1";
			x = 0.000874975 * safezoneW + safezoneX;
			y = 0.0556 * safezoneH + safezoneY;
			w = 0.8;
			h = (1 / 25);
		};
		
		class MedicsNearby : Life_RscText
		{
			idc = 7305;
			colorBackground[] = {0,0,0,0};
			text = "Medics Nearby: No";
			x = 0.00190622 * safezoneW + safezoneX;
			y = 0.0776 * safezoneH + safezoneY;
			w = 0.8;
			h = (1 / 25);
		};
		
		class RespawnBtn : Life_RscButtonMenu
		{
			idc = 7302;
			x = 0.9 * safezoneW + safezoneX;
			y = 0.00500001 * safezoneH + safezoneY;
			w = (9 / 40);
			h = (1 / 25);
			text = "Respawn";
			onButtonClick = "closeDialog 0; life_respawned = true; [] call life_fnc_spawnMenu;";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class MedicBtn : Life_RscButtonMenu
		{
			idc = 7303;
			x = 0.9 * safezoneW + safezoneX;
			y = 0.0292 * safezoneH + safezoneY;
			w = (9 / 40);
			h = (1 / 25);
			onButtonClick = "[] call life_fnc_requestMedic;";
			text = "Request Medic";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class respawnTime : Life_RscText
		{
			idc = 7301;
			colorBackground[] = {0,0,0,0};
			text = "";
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.918 * safezoneH + safezoneY;
			w = 0.8;
			h = (1 / 25);
		};
	};
};

class DeathScreencop
{
	idd = 7300;
	name = "Life_Death_Screen";
	movingEnabled = false;
	enableSimulation = true;
	onLoad = "uiNamespace setVariable [""Life_Death_Screen"", _this select 0]; deathscreenopen = 1;";
	onUnLoad = "deathscreenopen = 0;";
	
	class controlsBackground
	{
	};
	
	class Controls
	{
		class MedicsOnline : Life_RscText
		{
			idc = 7304;
			colorBackground[] = {0,0,0,0};
			text = "Medics Online: 1";
			x = 0.000874975 * safezoneW + safezoneX;
			y = 0.0556 * safezoneH + safezoneY;
			w = 0.8;
			h = (1 / 25);
		};
		
		class MedicsNearby : Life_RscText
		{
			idc = 7305;
			colorBackground[] = {0,0,0,0};
			text = "Medics Nearby: No";
			x = 0.00190622 * safezoneW + safezoneX;
			y = 0.0776 * safezoneH + safezoneY;
			w = 0.8;
			h = (1 / 25);
		};
		
		class RespawnBtn : Life_RscButtonMenu
		{
			idc = 7302;
			x = 0.9 * safezoneW + safezoneX;
			y = 0.00500001 * safezoneH + safezoneY;
			w = (9 / 40);
			h = (1 / 25);
			text = "Respawn";
			onButtonClick = "closeDialog 0; life_respawned = true; [] call life_fnc_spawnMenu;";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class MedicBtn : Life_RscButtonMenu
		{
			idc = 7303;
			x = 0.9 * safezoneW + safezoneX;
			y = 0.0292 * safezoneH + safezoneY;
			w = (9 / 40);
			h = (1 / 25);
			onButtonClick = "[] call life_fnc_requestMedic;";
			text = "Request Medic";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
			class Attributes 
			{
				align = "center";
			};
		};
		
		class respawnTime : Life_RscText
		{
			idc = 7301;
			colorBackground[] = {0,0,0,0};
			text = "";
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.918 * safezoneH + safezoneY;
			w = 0.8;
			h = (1 / 25);
		};
		
		class text: RscText
		{
			idc = 16800;
			text = "You agree not using this INGAME."; //--- ToDo: Localize;
			x = 0.799062 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.175313 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class background: IGUIBack
		{
			idc = 22600;
			x = 0.819688 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.128906 * safezoneW;
			h = 0.374 * safezoneH;
		};
		class RscFrame_1800: RscFrame
		{
			idc = 18040;
			x = 0.819688 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.128906 * safezoneW;
			h = 0.374 * safezoneH;
		};
		class structuredfap: RscStructuredText
		{
			idc = 11200;
			x = 0.819688 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.128906 * safezoneW;
			h = 0.374 * safezoneH;
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 11901;
			text = "By using this information INGAME, you risk getting banned for METAGAMING. This is only used to report a player stealing your shit."; //--- ToDo: Localize;
			x = 0.819688 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.128906 * safezoneW;
			h = 0.077 * safezoneH;
			sizeEx = 0.6 * GUI_GRID_H;
};
	};
};