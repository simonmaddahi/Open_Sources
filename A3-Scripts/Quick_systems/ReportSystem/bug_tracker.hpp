class bug_tracker
{
    idd = 8111;
	name = "bug_tracker";
    movingEnable = false;
    enableSimulation = true; //Default: true
	onLoad = "[0] spawn life_fnc_sendBug";
	class controlsBackground
	{
		class TITEL: Life_RscStructuredText
		{
			idc = -1;
			text = ""; 
			x = 0.3875 * safezoneW + safezoneX;
			y = 0.272 * safezoneH + safezoneY;
			w = 0.225 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
		};
		class TEXTBOX: Life_RscText
		{
			idc = -1;
			x = 0.3875 * safezoneW + safezoneX;
			y = 0.3 * safezoneH + safezoneY;
			w = 0.225 * safezoneW;
			h = 0.46 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
			colorActive[] = {0,0,0,0.7};
		};
		class hinweis1: Life_RscStructuredText
		{
			idc = 1354;
			text = "* Mit diesem Symbol gekenntzeichnete Felder"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.688 * safezoneH + safezoneY;
			w = 0.22 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,1};
		};
		class hinweis2: Life_RscStructuredText
		{
			idc = 1355;
			text = "müssen ausgefuellt werden!"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.716 * safezoneH + safezoneY;
			w = 0.22 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,1};
		};
	};
	class controls //Buttonsshit
	{
		class TITEL: Life_RscStructuredText
		{
			idc = -1;
			text = "Supportsystem | Bug-Meldungen"; 
			x = 0.3875 * safezoneW + safezoneX;
			y = 0.272 * safezoneH + safezoneY;
			w = 0.225 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,1};
		};
		class RscText_1001: Life_RscText
		{
			idc = -1;
			text = "Spielername*:"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class RscText_1002: Life_RscText
		{
			idc = -1;
			text = "SpielerUID*:"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.344 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class PLAYERID: Life_RscStructuredText
		{
			idc = 1350;
			text = "000000000000000000000000"; 
			x = 0.4725 * safezoneW + safezoneX;
			y = 0.344 * safezoneH + safezoneY;
			w = 0.19179 * safezoneW;
			h = 0.0198 * safezoneH;
			colorText[] = {1,1,1,1};
			tooltip = "Steam64ID"; 
		};
		class NAME: Life_RscStructuredText
		{
			idc = 1351;
			text = "Holy_f0rest.Stewart"; 
			x = 0.4725 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.19179 * safezoneW;
			h = 0.0198 * safezoneH;
			colorText[] = {1,1,1,1};
			tooltip = "Spielername"; 
		};
		class KURZT: Life_RscText
		{
			idc = -1;
			text = "Wo ist der Bug*:"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.396 * safezoneH + safezoneY;
			w = 0.175 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class BESCHREIBUNGT: Life_RscText
		{
			idc = -1;
			text = "Beschreibung*:";
			x = 0.39 * safezoneW + safezoneX;
			y = 0.46 * safezoneH + safezoneY;
			w = 0.1598124 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class KURZF: Life_RscEdit
		{
			idc = 1352;
			text = "Bitte Titel eingeben"; 
			x = 0.395 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.210254 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.7};
			colorActive[] = {0,0,0,0.7};
			tooltip = "Titel der Meldung"; 
		};
		class BESCHREIBUNG: Life_RscEdit
		{
			idc = 1353;
			text = "Bitte Beschreibung eingeben"; 
			x = 0.395 * safezoneW + safezoneX;
			y = 0.484 * safezoneH + safezoneY;
			w = 0.21 * safezoneW;
			h = 0.1 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.7};
			colorActive[] = {0,0,0,0.7};
			tooltip = "Beschreibung des Bugs"; 
		};
		class CLOSEIT: Life_RscButton
		{
			idc = -1;
			text = "Schließen"; 
			x = 0.42 * safezoneW + safezoneX;
			y = 0.64 * safezoneH + safezoneY;
			w = 0.160267 * safezoneW;
			h = 0.0264 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};
			colorActive[] = {0,0,0,1};
			tooltip = "Schließt diesen Dialog.";
			action = "closeDialog 0";
			type = 1;access = 0;
			colorShadow[] = {0,0,0,0};
		};
		class SENDEN: Life_RscButton
		{
			idc = -1;
			text = "Abschicken"; 
			x = 0.42 * safezoneW + safezoneX;
			y = 0.604 * safezoneH + safezoneY;
			w = 0.160267 * safezoneW;
			h = 0.0264 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};
			colorActive[] = {0,0,0,1};
			tooltip = "Sendet die Meldung ab"; 
			action = "[1] spawn life_fnc_sendBug";
			type = 1;access = 0;
			colorShadow[] = {0,0,0,0};
		};
	};
};