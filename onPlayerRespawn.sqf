_resPos = [];
for "_i" from 1 to 18 do {
	_resPos pushBack (missionNamespace getVariable [format ["respawnPos_%1", _i], objNull])
};

player setPosATL (getPosATL (selectRandom _resPos));
player setUnitLoadout starterLoadout;

sleep 1;
player call WBK_CustomFlashlight;