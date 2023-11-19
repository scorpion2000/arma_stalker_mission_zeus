params ["_building"];

_class = configFile >> "CfgVehicles" >> typeOf _building;
_num = getNumber (_class >> "numberofdoors");

while {true} do {
	[_building, format ["Door_%1_rot", (floor random (_num)) + 1], "Door_1_Handle_rot_1", "Door_1_Handle_rot_0", selectRandom [0, 1]] call BIS_fnc_DoorOpen;
	sleep (20 + (random 40));
};
