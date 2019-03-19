/*
	Creator: Natic
	Description: Dialog to read Bug reports as Admin!
*/
class bug_tracker_admin {
    idd = 8112;
    name = "bug_tracker_admin";
    onLoad = "[0] spawn life_fnc_readBug";
    onUnLoad = "";
    movingEnable = false;
    enableSimulation = true;

    class controlsBackground {
        class Life_RscTitleBackground: Life_RscText
        {
            idc = -1;
            text = "";
            x = 0.162881 * safezoneW + safezoneX;
            y = 0.090123 * safezoneH + safezoneY;
            w = 0.6 * safezoneW;
            h = 0.04 * safezoneH;
            ColorBackground[] = {0.380392,0.698039,0.882352,0.698039};
        };
    };
    class controls {
        class MainBackground: Life_RscText
        {
            idc = 8120;
            text = "";
            x = 0.026423 * safezoneW + safezoneX;
            y = 0.098789 * safezoneH + safezoneY;
            w = 0.960416 * safezoneW;
            h = 0.911555 * safezoneH;
            ColorBackground[] = {0,0,0,0.698039};
            ColorText[] = {1,1,1,1};
        };
        class Title: Life_RscText
        {
            idc = 8121;
            text = "$STR_bug_Title";
            x = 0.163923 * safezoneW + safezoneX;
            y = 0.086419 * safezoneH + safezoneY;
            w = 0.6 * safezoneW;
            h = 0.04 * safezoneH;
            ColorBackground[] = {0,0,0,0};
            ColorText[] = {1,1,1,1};
        };
        class BugConnection: Life_RscText
        {
            idc = 8122;
            text = "";
            x = 0.160798 * safezoneW + safezoneX;
            y = 0.088271 * safezoneH + safezoneY;
            w = 0.6 * safezoneW;
            h = 0.04 * safezoneH;
            ColorBackground[] = {0.098039,0.098039,0.098039,0};
            ColorText[] = {1,1,1,1};
        };
        class BugMsgList: Life_RscListBox
        {
            idc = 8123;
            text = "";
            onLBSelChanged = "[] spawn life_fnc_readBug";
            x = -0.00118 * safezoneW + safezoneX;
            y = 0.186049 * safezoneH + safezoneY;
            w = 0.951562 * safezoneW;
            h = 0.733333 * safezoneH;
            ColorBackground[] = {0.098039,0.098039,0.098039,0.588235};
            ColorText[] = {1,1,1,1};
        };
        class CloseButtonKey: Life_RscButtonMenu
        {
            idc = 8124;
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
            x = 0.005590 * safezoneW + safezoneX;
            y = 0.929012 * safezoneH + safezoneY;
            w = 0.15625 * safezoneW;
            h = 0.04 * safezoneH;
            ColorBackground[] = {0.098039,0.098039,0.098039,0.666666};
            ColorText[] = {1,1,1,1};
        };
        class ButtonBugMsgDelete: Life_RscButtonMenu
        {
            idc = 8125;
            text = "$STR_bug_delete";
            onButtonClick = "";
            x = 0.172256 * safezoneW + safezoneX;
            y = 0.930863 * safezoneH + safezoneY;
            w = 0.15625 * safezoneW;
            h = 0.04 * safezoneH;
            ColorBackground[] = {0.098039,0.098039,0.098039,0.666666};
            ColorText[] = {1,1,1,1};
        };
    };
};
////////////////////////////////////////////////////////////////////////////
