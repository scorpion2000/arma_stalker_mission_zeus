//Something's resetting this eventhandler, so we're re resetting it >:D

while {true} do {
	inGameUISetEventHandler [
		"Action", 
		"if ((_this select 0) isKindOf 'Land_SCH_Entrance_A_02' && (str (_this select 5) == '0.388' || str (_this select 5) == '0.39')) then { 
			if !((_this select 1) getVariable ['hasKey', false]) then {
				101 cutText ['Zárva! Ehhez kulcs kell.', 'PLAIN DOWN', 2]; 101 cutFadeOut 5; true
			} else {
				[] call wsot_fnc_tpToMadhouseLocal; true
			}
		} else {
			false
		}"
	];

	sleep 10;
};