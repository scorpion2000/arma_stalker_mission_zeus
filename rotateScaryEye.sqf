params ["_object"];

waitUntil { !(isNil "eyeHideDistance") };

_eye = createVehicleLocal ["UserTexture1m_F", (getPosATL _object), [], 0, "CAN_COLLIDE"];
_eye setObjectTexture [0, "images\creepy_eye.paa"];

while {_eye getVariable ["shouldRotate", true]} do {
	if (player distance2D _eye < eyeHideDistance) then { _eye hideObject true } else { _eye hideObject false };

	_rel = _eye getRelDir getPos player;
	_eye setDir (getDir _eye) + _rel + 180;

	sleep 0.2;
};
