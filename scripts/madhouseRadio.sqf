_sounds = [
	"radio_1.ogg",
	"radio_2.ogg",
	"radio_3.ogg",
	"radio_4.ogg",
	"radioStatic.ogg",
	"radio_1.ogg",
	"radio_2.ogg",
	"radio_3.ogg",
	"radio_4.ogg",
	"radioStatic.ogg"
];

while {true} do {
	if !(inMadhouse) then {sleep 60; continue};

	_rnd = floor (random 19);

	_asd = playSound3D [getMissionPath (format ["sounds\%1", selectRandom _sounds]), creepy_radio, true, getPosATL creepy_radio, 5, 1, 200, 0, true];

	sleep (60 + (random 120));
};