waitUntil { player distance2D offer_tp < 10 };

_eyes = nearestObjects [player, ["UserTexture1m_F"], 250];

while {player distance2D offer_tp < 250} do {
	{
		_rel = _x getRelDir getPos player;
		_x setDir (getDir _x) + _rel + 180;
	} forEach _eyes;
	sleep 0.2;
};