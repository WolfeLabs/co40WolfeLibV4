#include "CustomControlClasses.h"
class MyDialog
{
	idd = -1;
	
	class ControlsBackground
	{
		
	};
	class Controls
	{
		class target_life
		{
			type = 8;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29394532;
			y = safeZoneY + safeZoneH * 0.22569445;
			w = safeZoneW * 0.41210938;
			h = safeZoneH * 0.03125;
			style = 0;
			colorBar[] = {1,0,0,1};
			colorFrame[] = {0.3373,0.451,0.9882,1};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			
		};
		class punch_face
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.37152778;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.0625;
			style = 0;
			text = "Punch Face";
			borderSize = 1;
			colorBackground[] = {0.702,0.4,0.102,1};
			colorBackgroundActive[] = {1,0.6,0.4,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			action = "PlaceHolder.sqf";
			default = punch_face;
			tooltip = "Punch in face to get Intel";
			
		};
		class punch_gut
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.44444445;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.0625;
			style = 0;
			text = "Punch Gut";
			borderSize = 1;
			colorBackground[] = {0.702,0.4,0.102,1};
			colorBackgroundActive[] = {1,0.6,0.4,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			default = punch_gut;
			onButtonClick = "";
			tooltip = "Punch in gut to get Intel";
			
		};
		class stab_leg
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.31835938;
			y = safeZoneY + safeZoneH * 0.51736112;
			w = safeZoneW * 0.09472657;
			h = safeZoneH * 0.0625;
			style = 0;
			text = "Stab Leg";
			borderSize = 1;
			colorBackground[] = {0.702,0.4,0.102,1};
			colorBackgroundActive[] = {1,0.6,0.4,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {0,0,0,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			action = "PlaceHolder.sqf";
			default = stab_leg;
			tooltip = "Stab leg to get Intel";
			
		};
		
	};
	
};
