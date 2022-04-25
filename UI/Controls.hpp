class LmnOS_Loading
{
	idd = 2001;
	class Controls
	{
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "UI\Images\Loading.jpg";
			x = 0.144116 * safezoneW + safezoneX;
			y = 0.06198 * safezoneH + safezoneY;
			w = 0.732187 * safezoneW;
			h = 0.847 * safezoneH;
		};

	};
};

class LmnOS_Menu
{
	idd = 2002;
	class Controls
	{
		class RscPicture_1200: RscPicture
		{
			idc = 1200;

			text = "UI\Images\Main Menu.jpg";
			x = 0.144116 * safezoneW + safezoneX;
			y = 0.06198 * safezoneH + safezoneY;
			w = 0.732187 * safezoneW;
			h = 0.847 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Company Directory"; //--- ToDo: Localize;
			x = 0.242187 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.187 * safezoneH;
			action = "closeDialog 2002; execVM 'populateList.sqf'"; 
			onLBSelChanged = "execVM 'textChange.sqf'";
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Logistics Menu"; //--- ToDo: Localize;
			x = 0.247344 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.201094 * safezoneW;
			h = 0.187 * safezoneH;
			action = "closeDialog 2002";
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Close Menu"; //--- ToDo: Localize;
			x = 0.608281 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.187 * safezoneH;
			action = "closeDialog 2002";
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Company Administration"; //--- ToDo: Localize;
			x = 0.603125 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.187 * safezoneH;
			action = "closeDialog 2002; execVM 'CompanyAdminInit.sqf'";
		};
	};
};

class LmnOS_Directory
{
	idd = 2003;
	class Controls
	{
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "UI\Images\Company Directory2.jpg";
			x = 0.144116 * safezoneW + safezoneX;
			y = 0.06198 * safezoneH + safezoneY;
			w = 0.732187 * safezoneW;
			h = 0.847 * safezoneH;
		};

		class RscListbox_1500: RscListBox
		{
			idc = 1500;

			x = 0.242187 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.517 * safezoneH;
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;

			text = "Company Info"; //--- ToDo: Localize;
			x = 0.603125 * safezoneW + safezoneX;
			y = 0.566 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.242 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;

			text = "Request to Join"; //--- ToDo: Localize;
			x = 0.45875 * safezoneW + safezoneX;
			y = 0.709 * safezoneH + safezoneY;
			w = 0.0928125 * safezoneW;
			h = 0.088 * safezoneH;
			action = "execVM 'ApplyCompany.sqf'";
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;

			text = "Main Menu"; //--- ToDo: Localize;
			x = 0.45875 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.0928125 * safezoneW;
			h = 0.088 * safezoneH;
			action = "closeDialog 2003; createDialog 'LmnOS_Menu'";
		};
		class RscStructuredText_1102: RscStructuredText
		{
			idc = 1102;

			text = "Company Specialty"; //--- ToDo: Localize;
			x = 0.603125 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscStructuredText_1103: RscStructuredText
		{
			idc = 1103;

			text = "Company Origin"; //--- ToDo: Localize;
			x = 0.603125 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscStructuredText_1104: RscStructuredText
		{
			idc = 1100;

			text = "Company Leader"; //--- ToDo: Localize;
			x = 0.603125 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscStructuredText_1105: RscStructuredText
		{
			idc = 1104;

			text = "Company Name"; //--- ToDo: Localize;
			x = 0.603125 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Click to View Vehicles"; //--- ToDo: Localize;
			x = 0.603125 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.055 * safezoneH;
		};
	};
};

class LmnOS_Thanks
{
	idd = 2004;
	class Controls
	{
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "UI\Images\Thanks.jpg";
			x = 0.144116 * safezoneW + safezoneX;
			y = 0.06198 * safezoneH + safezoneY;
			w = 0.732187 * safezoneW;
			h = 0.847 * safezoneH;
		};

	};
};

class LmnOS_Administration
{
	idd = 2005;
	class Controls
	{
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "UI\Images\Company Administration.jpg";
			x = 0.144116 * safezoneW + safezoneX;
			y = 0.06198 * safezoneH + safezoneY;
			w = 0.732187 * safezoneW;
			h = 0.847 * safezoneH;
		};
		class RscListbox_1500: RscListbox // Current Members
		{
			idc = 1500;
			x = 0.200937 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.232031 * safezoneW;
			h = 0.462 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Current Members"; //--- ToDo: Localize;
			x = 0.278281 * safezoneW + safezoneX;
			y = 0.214 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class RscListbox_1501: RscListbox // Applicants
		{
			idc = 1501;
			x = 0.587656 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.462 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Applicants"; //--- ToDo: Localize;
			x = 0.634062 * safezoneW + safezoneX;
			y = 0.214 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Approve"; //--- ToDo: Localize;
			x = 0.762969 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.077 * safezoneH;
			// action = "execVM 'approve.sqf'";
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Deny"; //--- ToDo: Localize;
			x = 0.762969 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.077 * safezoneH;
			// action = "execVM 'Deny.sqf'";
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Main Menu"; //--- ToDo: Localize;
			x = 0.463906 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.077 * safezoneH;
			action = "closeDialog 2005; createDialog 'LmnOS_Menu'";
		};

	};
};

class LmnOS_Vehicles
{
	idd = 2006;
	class Controls
	{
		class RscPicture_1200: RscPicture
		{
			idc = 1200;
			text = "UI\Images\Company Vehicles.jpg";
			x = 0.144116 * safezoneW + safezoneX;
			y = 0.06198 * safezoneH + safezoneY;
			w = 0.732187 * safezoneW;
			h = 0.847 * safezoneH;
		};
		class RscPicture_1201: RscPicture
		{
			idc = 1201;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.273125 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.209 * safezoneH;
		};
		class RscPicture_1202: RscPicture
		{
			idc = 1202;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.536094 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.209 * safezoneH;
		};
		class RscPicture_1203: RscPicture
		{
			idc = 1203;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.273125 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.209 * safezoneH;
		};
		class RscPicture_1204: RscPicture
		{
			idc = 1204;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.536094 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.209 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Back to Menu"; //--- ToDo: Localize;
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.077 * safezoneH;
			action = "closeDialog 2006; createDialog 'LmnOS_Menu'";
		};

	};
};
