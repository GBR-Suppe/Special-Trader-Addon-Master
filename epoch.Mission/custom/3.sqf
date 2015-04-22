if (EPOCH_playerCrypto > 4499) then {
	player playActionNow "Medic";
	_spawnPos = player modelToWorld [0,2,0];
	_spawnDir = (getDir player) -90;
	drei = [player, _spawnPos, _spawnDir];
	EPOCH_playerCrypto = EPOCH_playerCrypto - 4500 ;
	sleep 3;
	publicVariableServer "drei";
	sleep 1;
	['Vehicle do not save on restart',0,0.7,2,0] spawn bis_fnc_dynamictext;
	player removeAction drei;
} else{
	['You need 4500 Crypto.',0,0.7,2,0] spawn bis_fnc_dynamictext;
};