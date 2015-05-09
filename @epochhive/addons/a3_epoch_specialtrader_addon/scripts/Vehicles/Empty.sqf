/*
	File: 		trade_addon empty.sqf
	Author: 	GBR Suppe
	Version: 	0.2.0
	Edit: 		IF YOU EDIT SOMETHING YOUR NAME HERE
*/
	
diag_log format['***[TRADE] EMPTY IS READY***'];

if(isServer) then {
	"acht" addPublicVariableEventHandler {_this select 1 call Spawn_8};

	Spawn_8 = {	

		private["_spawnPos","_spawnDir","_veh"];

		_spawnPos = _this select 1;
		_spawnDir = _this select 2;
		_veh = createVehicle["GNT_C185", _spawnPos, [], 0, "NO_COLLIDE"];
		_veh allowDamage false;
		_veh setPos _spawnPos;
		_veh setDir _spawnDir;
		_veh setVectorUp (surfaceNormal (getPos _veh));
		_veh call EPOCH_server_setVToken;
		_veh call EPOCH_server_vehicleInit;
		_veh setVelocity [0,0,.1];
		_veh allowDamage true;
		
	};
};