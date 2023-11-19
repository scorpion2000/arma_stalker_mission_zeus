_nearbyPlayers = 0;

while {true} do {
	_nearbyPlayers = 0;
	sleep (60 + (random 120));
	
	{
		if (_x distance player <= 50) then {_nearbyPlayers = _nearbyPlayers + 1};
	} forEach allPlayers;

	if (_nearbyPlayers <= 2) then
	{
		[objNull, player, selectRandom [0, 1]] call ace_interaction_fnc_tapShoulder;
	};
};