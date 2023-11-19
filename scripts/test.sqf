if (slFindOnCooldown) exitWith {hint "Várd meg a 30mp Cooldown időt!"};
if (leader player == player) exitWith {hint "Te vagy a csapatod vezetője!"};
slFindOnCooldown = true;

for "_i" from 0 to 25 do {
	_dir = player getRelDir leader player;
	_dis = player distance2D leader player;

	_disDisplay = "ELŐRE";

	if (_dir < 330 && _dir > 180) then { _disDisplay = "<-- BALRA <--" };
	if (_dir > 30 && _dir < 180) then { _disDisplay = "--> JOBBRA -->" };

	hint format ["Távolság: %1m\n%2", floor _dis, _disDisplay];
	sleep 0.25;
};