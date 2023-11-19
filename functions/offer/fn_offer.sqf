params ["_player"];

if (_player getVariable ["bullshitID", 2] == 2) exitWith {};

_nearbyPlayers = [_player] call wsot_fnc_gatherNearbyPlayers;

{
	["he hates you"] remoteExec ["wsot_fnc_fadeInOut", (_x getVariable ["bullshitID", 2]), false];
} forEach _nearbyPlayers;

["we have an offer"] remoteExec ["wsot_fnc_fadeInOut", (_player getVariable ["bullshitID", 2]), false];

[] remoteExec ["wsot_fnc_offerLocal", (_player getVariable ["bullshitID", 2]), false];
[] remoteExec ["wsot_fnc_offerEyes", (_player getVariable ["bullshitID", 2]), false];