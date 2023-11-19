params [["_value", true]];

_resPos = [];
for "_i" from 1 to 106 do {
	_resPos pushBack (missionNamespace getVariable [format ["stalk_cam_%1", _i], objNull])
};

{
	_x hideObject !(_value);
} forEach _resPos;