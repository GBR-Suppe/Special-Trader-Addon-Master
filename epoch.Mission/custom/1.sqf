if (EPOCH_playerCrypto > 1199) then {
	player playActionNow "Medic";
	_spawnPos = player modelToWorld [0,2,0];
	_spawnDir = (getDir player) -90;
	eins = [player, _spawnPos, _spawnDir];
	EPOCH_playerCrypto = EPOCH_playerCrypto - 1200 ;
	sleep 3;
	publicVariableServer "eins";
	sleep 1;
	['Vehicle do not save on restart !',0,0.7,2,0] spawn bis_fnc_dynamictext;
	player removeAction eins;
} else{
	['You need 1200 Crypto. Go away, poor Bitch!',0,0.7,2,0] spawn bis_fnc_dynamictext;
};