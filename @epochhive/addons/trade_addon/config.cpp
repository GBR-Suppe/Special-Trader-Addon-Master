class CfgPatches {
	class trade_addon {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_server_settings"};
	};
};
class CfgFunctions {
	class trade {
		class main {
			file = "\x\addons\trade_addon\init";
			class init {
				postInit = 1;
			};
		};
	};
};

