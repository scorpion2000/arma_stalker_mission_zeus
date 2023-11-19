params ["_object"];

if !(isServer) exitWith {};

// adds the action to every client and JIP, but also adds it when it was already removed. E.g., Laptop has already been hacked by a player
[
	_object,																		// Object the action is attached to
	"Pick Up Documents",														// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",					// Idle icon shown on screen
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",					// Progress icon shown on screen
	"_this distance _target < 3 && player getVariable ['clearSky', false]",		// Condition for the action to be shown
	"_caller distance _target < 3 && player getVariable ['clearSky', false]",	// Condition for the action to progress
	{},																				// Code executed when action starts
	{},																				// Code executed on every progress tick
	{ 
		params ["_target", "_caller", "_actionId", "_arguments"];
		[_target] call wsot_fnc_docPickup; 
	},		// Code executed on completion
	{},																				// Code executed on interrupted
	[],																				// Arguments passed to the scripts as _this select 3
	2,																				// Action duration in seconds
	0,																				// Priority
	true,																			// Remove on completion
	false																			// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, _object];									// MP compatible implementation

if (isServer) then {
	waitUntil { !(isNil "labDocs") };
	labDocs pushBack _object;
};