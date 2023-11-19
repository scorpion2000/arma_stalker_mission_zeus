params ["_player"];

if (_player getVariable ["bullshitID", 2] == 2) exitWith {};

_nearbyPlayers = call wsot_fnc_gatherNearbyPlayers;

{
	{
		["one of us"] remoteExec ["wsot_fnc_fadeInOut", (_x getVariable ["bullshitID", 2]), false];
	};
} forEach _nearbyPlayers;

["come with us"] remoteExec ["wsot_fnc_fadeInOut", (_player getVariable ["bullshitID", 2]), false];

[] remoteExec ["wsot_fnc_tpToMadhouseLocal", (_player getVariable ["bullshitID", 2]), false];
[] remoteExec ["wsot_fnc_soundEffects", (_player getVariable ["bullshitID", 2]), false];
[] remoteExec ["wsot_fnc_radio", (_player getVariable ["bullshitID", 2]), false];
[] remoteExec ["wsot_fnc_mhEyes", (_player getVariable ["bullshitID", 2]), false];
