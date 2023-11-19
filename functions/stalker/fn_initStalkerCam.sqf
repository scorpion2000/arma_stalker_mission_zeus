sleep 3;

if (count stalkCamPositions == 0) then {
	for "_i" from 1 to 100 do {
		_camPosObj = missionNamespace getVariable [format ["stalk_cam_%1", _i], objNull];
		if (isNull _camPosObj) then { break; };
		stalkCamPositions pushBack _camPosObj;
	};
};

stalkerCam camPreparePos (eyePos player);
stalkerCam camCommitPrepared 0;

_sortedCams = [stalkCamPositions, [], {_x distance player}, "ASCEND"] call BIS_fnc_sortBy;

if ((_sortedCams select 0) distance2D player > 200) exitWith {};

_camPos = getPosATL (_sortedCams select 0);
stalkerCam camPrepareTarget player;
stalkerCam camPreparePos _camPos;
stalkerCam camCommitPrepared 1;

_heartBeatID = playSound3D [getMissionPath "sounds\heartBeat.ogg", player, true, _camPos, 5, 1, 200, (random 10), true];
stalkerCam cameraEffect ["internal", "back"];
sleep 4;
stalkerCam cameraEffect ["terminate", "back"];
stopSound _heartBeatID;