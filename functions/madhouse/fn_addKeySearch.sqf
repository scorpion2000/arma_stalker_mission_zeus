params ["_object", ["_hideBody", false]];

[
	_object,
	"Search for key",
	"", "",
	"_this distance _target < 3",
	"_caller distance _target < 3",
	{},
	{},
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		if (keysSearched >= 14) then
		{
			player setVariable ["hasKey", true];
			102 cutText ['Megtaláltam a kulcsot!', 'PLAIN DOWN', 2];
			102 cutFadeOut 5;
		} 
		else
		{
			keysSearched = keysSearched + 1;
			102 cutText ['Nem találtam semmit', 'PLAIN DOWN', 2];
			102 cutFadeOut 5;
		};

		if ((_arguments select 0)) then {hideObject creepy_body};

		if (keysSearched == 8) then {
			for "_i" from 1 to 11 do {
				_o = missionNamespace getVariable [format ["mh_graf_%1", _i], objNull];
				_o hideObject false;
			};
		};

		if (keysSearched == 11) then {
			for "_i" from 1 to 12 do {
				_o = missionNamespace getVariable [format ["mh_blood_%1", _i], objNull];
				_o hideObject false;
			};
		};
	},
	{},
	[_hideBody], 5, nil, true, false
] call BIS_fnc_holdActionAdd;