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

waitUntil { player distance2D madHouse_tp < 10; };

while {player distance2D madHouse_tp < 400} do {
	sleep (60 + (random 120));

	_rnd = floor (random 19);

	_asd = playSound3D [getMissionPath (format ["sounds\%1", selectRandom _sounds]), creepy_radio, true, getPosATL creepy_radio, 4, 1, 300, 0, true];
};