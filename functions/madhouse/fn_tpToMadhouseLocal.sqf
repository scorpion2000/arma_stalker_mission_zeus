player call WBK_CustomFlashlight;
_value = !(inMadhouse);

if (_value) then {
	sleep 1.5;
	madhouseOrigin = getPosATL player;
	madhouseSavedLoadout = getUnitLoadout player;
	player setPosATL (getPosATL madHouse_tp);
	player setUnitLoadout (getUnitLoadout madhouseLoadout);
	[] remoteExec ["wsot_fnc_flashlightFlicker", (clientOwner), false];
	inMadhouse = true;
} else {
	player setPosATL madhouseOrigin;
	player setUnitLoadout madhouseSavedLoadout;
	inMadhouse = false;
};
sleep 1;
player call WBK_CustomFlashlight;