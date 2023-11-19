params ["_originPlayer"];

_return = [];

{
	if (_x == _originPlayer) then {continue};
	if (_originPlayer distance2D _x < 100) then 
	{ 
		_return pushBack _x
	};
} forEach allPlayers;

_return