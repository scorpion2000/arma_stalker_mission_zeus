params ["_object"];

if !(isServer) exitWith {};

// adds the action to every client and JIP, but also adds it when it was already removed. E.g., Laptop has already been hacked by a player
[
	_object,																		// Object the action is attached to
	"Analyze Anomolous Object",														// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",					// Idle icon shown on screen
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",					// Progress icon shown on screen
	"_this distance _target < 3 && player getVariable ['isScientist', false] && !(_target getVariable ['wasChecked', false])",		// Condition for the action to be shown
	"_caller distance _target < 3 && player getVariable ['isScientist', false] && !(_target getVariable ['wasChecked', false])",	// Condition for the action to progress
	{},																				// Code executed when action starts
	{},																				// Code executed on every progress tick
	{ [_target] call wsot_fnc_anomalyRead; _target setVariable ["wasChecked", true, true]; },		// Code executed on completion
	{},																				// Code executed on interrupted
	[],																				// Arguments passed to the scripts as _this select 3
	4,																				// Action duration in seconds
	0,																				// Priority
	true,																			// Remove on completion
	false																			// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, _object];									// MP compatible implementation

if (isServer) then {
	waitUntil { !(isNil "anomalousObjects") };
	anomalousObjects pushBack _object;
};