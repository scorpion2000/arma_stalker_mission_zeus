params ["_player"];

[] remoteExec ["wsot_fnc_statueSequenceLocal", (_player getVariable ["bullshitID", 2]), false];
