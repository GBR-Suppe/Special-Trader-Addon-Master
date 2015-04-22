if (EPOCH_playerCrypto > 1399) then {
	player playActionNow "Medic";
	_spawnPos = player modelToWorld [0,2,0];
	_spawnDir = (getDir player) -90;
	zwei = [player, _spawnPos, _spawnDir];
	EPOCH_playerCrypto = EPOCH_playerCrypto - 1400 ;
	sleep 3;
	publicVariableServer "zwei";
	sleep 1;
	['Vehicle do not save on restart',0,0.7,2,0] spawn bis_fnc_dynamictext;
	player removeAction zwei;
} else{
	['You need 1400 Crypto. Go and get some Crypto!',0,0.7,2,0] spawn bis_fnc_dynamictext;
};