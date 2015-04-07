class CfgCommunicationMenu
{
	class AH99
	{
		text = "Ka-52 Support"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_helosupport = [(getmarkerpos ""ghst_player_support""),""RHS_Ka52_vvsc"",30,[400, 150],30,[false,""ColorRed""],""ghst_helosup""] spawn ghst_fnc_airsupport;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\attack_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class A164
	{
		text = "Su-25 Support"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_cassupport = [(getmarkerpos ""ghst_player_support""),""RHS_Su25SM_KH29_vvsc"",30,[600, 600],30,[false,""ColorRed""],""ghst_cassup""] spawn ghst_fnc_airsupport;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\cas_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class UAV
	{
		text = "UAV Support"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_uavsupport = [(getmarkerpos ""ghst_player_support""),""O_UAV_02_F"",500,30] spawn ghst_fnc_uavsupport;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class PUAV
	{
		text = "AR-2 Darter Support"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_puavsupport = [""O_UAV_01_F"",5] spawn ghst_fnc_puavsupport;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "";//"\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class UGV
	{
		text = "UGV Support"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_ugvsupport = [(getmarkerpos ""ghst_player_support""),""O_UGV_01_rcws_F"",2,30] spawn ghst_fnc_ugvsupport;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\supplydrop_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class AMMO
	{
		text = "Ammo Drop"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_ammodrop = [player,(getmarkerpos ""ghst_player_support""),""RHS_Mi8mt_Cargo_vvsc"",""O_supplyCrate_F"",150,30] spawn ghst_fnc_ammodrop;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\supplydrop_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
	class CARGO
	{
		text = "Cargo Drop"; // Text displayed in the menu and in a notification
		submenu = ""; // Submenu opened upon activation
		expression = "ghst_drop = [player,(getmarkerpos ""ghst_player_support""),""RHS_Mi8mt_Cargo_vvsc"",200,30] spawn ghst_fnc_cargodrop;"; // Code executed upon activation (ignored when the submenu is not empty)
		icon = "";//"\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\supplydrop_ca.paa"; // Icon displayed permanently next to the command menu
		cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
		enable = "1"; // Simple expression condition for enabling the item
	};
    class Artillery
    {
        text = "Artillery Strike"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation (expression is ignored when submenu is not empty.)
        expression = "player setVariable ['BIS_SUPP_request', ['Artillery', _pos]];"; // Code executed upon activation
        icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\artillery_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        //removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };
    class Transport
    {
        text = "Helicopter transport"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation (expression is ignored when submenu is not empty.)
        expression = "player setVariable ['BIS_SUPP_request', ['Transport', _pos]]"; // Code executed upon activation
        icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\transport_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
        enable = "1"; // Simple expression condition for enabling the item
        //removeAfterExpressionCall = 1; // 1 to remove the item after calling
    };	
};