params ["_player"];

if (_player getVariable ["bullshitID", 2] == 2) exitWith {};

_nearbyPlayers = [_player] call wsot_fnc_gatherNearbyPlayers;
_nearbyPlayers pushBack _player;

_resPos = [];
for "_i" from 1 to 18 do {
	_resPos pushBack (missionNamespace getVariable [format ["respawnPos_%1", _i], objNull])
};

_resPosRand = _resPos call BIS_fnc_arrayShuffle;

{
	["they left you here"] remoteExec ["wsot_fnc_fadeInOut", (_x getVariable ["bullshitID", 2]), false];
	[(_resPosRand select _foreachIndex)] remoteExec ["wsot_fnc_scatterLocal", (_x getVariable ["bullshitID", 2]), false];
} forEach _nearbyPlayers;