/*
	File: 		OffroadHMG.sqf
	Author: 	GBR Suppe
	Version: 	0.2.0
	Edit: 		IF YOU EDIT SOMETHING YOUR NAME HERE
*/
_costs = 2200;

if (EPOCH_playerCrypto < _costs && isHalvTradeEnabled) exitWith {cutText [format["You need %1 Crypto to Repair %2", _costs,_name], "PLAIN DOWN"];};
	player playActionNow "Medic";
	_spawnPos = player modelToWorld [0,2,0];
	_spawnDir = (getDir player) -90;
	drei = [player, _spawnPos, _spawnDir];
	if(_costs > 0 && isHalvTradeEnabled)then{
	HALV_takegive = [player,(_costs*-1),true];
	publicVariableServer "HALV_takegive";
	sleep 3;
	publicVariableServer "drei";
	sleep 1;
	['Vehicle do not save on restart !',0,0.7,2,0] spawn bis_fnc_dynamictext;
	player removeAction drei;
} else{
	['You need 2200 Crypto. Go away, poor Bitch!',0,0.7,2,0] spawn bis_fnc_dynamictext;
};