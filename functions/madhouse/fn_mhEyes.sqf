waitUntil { player distance2D madHouse_tp < 10 };

madhouse_eyes = nearestObjects [player, ["UserTexture1m_F"], 400];

while {player distance2D madHouse_tp < 250} do {
	{
		_rel = _x getRelDir getPos player;
		_x setDir (getDir _x) + _rel + 180;
	} forEach madhouse_eyes;
	sleep 0.2;
};