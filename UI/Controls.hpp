class LmnOS_Home
{
	idd = 1;
	onLoad = "execVM 'UI\Scripts\homepage.sqf'";
	class Controls 
	{
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "UI\Images\LemonOS_Home2.jpg";
			x = 0.159687 * safezoneW + safezoneX;
			y = 0.082 * safezoneH + safezoneY;
			w = 0.690938 * safezoneW;
			h = 0.814 * safezoneH;
		};
		class MyProfile: RscButton
		{
			idc = 1600;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class Directory: RscButton
		{
			idc = 1601;
			x = 0.639219 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class Admin: RscButton
		{
			idc = 1602;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class Logistics: RscButton
		{
			idc = 1603;
			x = 0.639219 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class Quit: RscButton
		{
			idc = 1604;
			x = 0.742344 * safezoneW + safezoneX;
			y = 0.698 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class Github: RscButton
		{
			idc = 1605;
			x = 0.799062 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.055 * safezoneH;
			url = "https://github.com/UncreatedLemon1/Lemon-s-Warfare";
		};
		class Youtube: RscButton
		{
			idc = 1606;
			x = 0.799062 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.055 * safezoneH;
			url = "https://youtu.be/Ifig6gggVwQ?t=100";
		};
		class Discord: RscButton
		{
			idc = 1607;
			x = 0.799062 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.055 * safezoneH;
			url = "https://discord.gg/DWPa3cbZHb";
		};
		class PlayerName: RscText
		{
			idc = 1000;
			x = 0.371094 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.232031 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class ServerChanges: RscText
		{
			idc = 1001;
			x = 0.200937 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.226875 * safezoneW;
			h = 0.495 * safezoneH;
		};
	};
};

class LmnOS_Directory
{
	idd = 2;
	onLoad = "execVM 'UI\Scripts\Directory.sqf'";
	class Controls 
	{
		class Enlist: RscButton
		{
			idc = 1601;

			x = 0.453594 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class Github: RscButton
		{
			idc = 1605;
			url = "https://github.com/UncreatedLemon1/Lemon-s-Warfare";

			x = 0.799062 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class Youtube: RscButton
		{
			idc = 1606;
			url = "https://youtu.be/Ifig6gggVwQ?t=100";

			x = 0.799062 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class Discord: RscButton
		{
			idc = 1607;
			url = "https://discord.gg/DWPa3cbZHb";

			x = 0.799062 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class Back: RscButton
		{
			idc = 1602;

			x = 0.567031 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class Quit: RscButton
		{
			idc = 1605;

			x = 0.793906 * safezoneW + safezoneX;
			y = 0.797 * safezoneH + safezoneY;
			w = 0.0515625 * safezoneW;
			h = 0.088 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.190625 * safezoneW + safezoneX;
			y = 0.214 * safezoneH + safezoneY;
			w = 0.2475 * safezoneW;
			h = 0.594 * safezoneH;
			// onLBSelChanged = "[] call Lmn_fnc_updateText";
		};
		class RscText_1002: RscText
		{
			idc = 2002;
			x = 0.469062 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.226875 * safezoneW;
			h = 0.374 * safezoneH;
		};
		class RscText_1010: RscText
		{
			idc = 2100;
			text = "Owner Name"; //--- ToDo: Localize;
			x = 0.474219 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.216563 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscText_1011: RscText
		{
			idc = 2101;
			text = "Member Count"; //--- ToDo: Localize;
			x = 0.474219 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.216563 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscText_1012: RscText
		{
			idc = 2102;
			text = "About"; //--- ToDo: Localize;
			x = 0.47422 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.216563 * safezoneW;
			h = 0.165 * safezoneH;
		};
		class RscPicture_1200: RscPicture
		{
			idc = 1200;

			text = "UI\Images\LemonOS_Directory.jpg";
			x = 0.159687 * safezoneW + safezoneX;
			y = 0.082 * safezoneH + safezoneY;
			w = 0.690938 * safezoneW;
			h = 0.814 * safezoneH;
		};
	};
};

class LmnOS_Logistics
{
	idd = 3;
	onLoad = "execVM 'UI\Scripts\Logistics.sqf'";
	class Controls
	{
		class Github: RscButton
		{
			idc = 1605;
			url = "https://github.com/UncreatedLemon1/Lemon-s-Warfare";

			x = 0.799062 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class Youtube: RscButton
		{
			idc = 1606;
			url = "https://youtu.be/Ifig6gggVwQ?t=100";

			x = 0.799062 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class Discord: RscButton
		{
			idc = 1607;
			url = "https://discord.gg/DWPa3cbZHb";

			x = 0.799062 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class Back: RscButton
		{
			idc = 1602;

			x = 0.701094 * safezoneW + safezoneX;
			y = 0.632 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class Quit: RscButton
		{
			idc = 1605;

			x = 0.793906 * safezoneW + safezoneX;
			y = 0.797 * safezoneH + safezoneY;
			w = 0.0515625 * safezoneW;
			h = 0.088 * safezoneH;
		};
		class Text: RscText
		{
			idc = 2002;

			x = 17 * GUI_GRID_W + GUI_GRID_X;
			y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 22 * GUI_GRID_W;
			h = 17 * GUI_GRID_H;
		};
		class RscPicture_1200: RscPicture
		{
			idc = 1200;

			text = "UI\Images\LemonOS_Logistics.jpg";
			x = 0.159687 * safezoneW + safezoneX;
			y = 0.082 * safezoneH + safezoneY;
			w = 0.690938 * safezoneW;
			h = 0.814 * safezoneH;
		};
		class Spawn: RscButton
		{
			idc = 1620;

			x = 0.701094 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.187 * safezoneH;
		};
		class Objects: RscListbox
		{
			idc = 1500;
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.214 * safezoneH + safezoneY;
			w = 0.237187 * safezoneW;
			h = 0.594 * safezoneH;
		};
		class ObjectType: RscListbox
		{
			idc = 1501;
			x = 0.190625 * safezoneW + safezoneX;
			y = 0.214 * safezoneH + safezoneY;
			w = 0.2475 * safezoneW;
			h = 0.594 * safezoneH;
		};
		class ObjectPreview: RscPicture
		{
			idc = 2022;

			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.237187 * safezoneW;
			h = 0.297 * safezoneH;
		};
	};
};
