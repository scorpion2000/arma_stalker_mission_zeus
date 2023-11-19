statueCam camPrepareTarget scaryStatue;
statueCam cameraEffect ["internal", "back"];

_soundID = playSound3D [getMissionPath "sounds\ghostlyWhispers.ogg", scaryStatue, false, getPosATL scaryStatue, 5, 1, 400, 4, true];
sleep 1;
stopSound _soundID;
sleep 1;
_soundID = playSound3D [getMissionPath "sounds\ghostlyWhispers.ogg", scaryStatue, false, getPosATL scaryStatue, 5, 1, 400, 4, true];

for "_i" from 1 to 4 do {
	_tpPosObj = missionNamespace getVariable [format ["stat_tp_%1", (5 - _i)], objNull];
	statueCam camPreparePos (getPos _tpPosObj);
	statueCam camCommitPrepared 0;

	_rnd = random 10;
	if (_i == 4 && _rnd < 2) then
	{
		2 cutText ["<t color='#ff0000' size='5'>
		GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD GOD IS DEAD
		</t>", "PLAIN NOFADE", -1, true, true];
	};

	sleep 1.5;
};
2 cutFadeOut 0;

stopSound _soundID;

statueCam cameraEffect ["terminate", "back"];

1 cutText ["we love you", "PLAIN", 1];
sleep 2;
1 cutFadeOut 5;