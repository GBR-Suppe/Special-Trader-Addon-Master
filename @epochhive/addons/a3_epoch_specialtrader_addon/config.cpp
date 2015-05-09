class CfgPatches {
	class a3_epoch_specialtrader_addon {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_server_settings"};
	};
};
class CfgFunctions {
	class specialtrader {
		class main {
			file = "\x\addons\a3_epoch_specialtrader_addon\init";
			class init {
				postInit = 1;
			};
		};
	};
};

