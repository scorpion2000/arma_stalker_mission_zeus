_sounds = [
	"lightClickOff.ogg",
	"lightClickOn.ogg",
	"lulabby.ogg",
	"music_box.ogg",
	"prettyHumming1.ogg",
	"prettyHumming2.ogg",
	"prettyHumming3.ogg",
	"prettyHumming4.ogg",
	"sadCry1.ogg",
	"sadCry2.ogg",
	"kids.ogg",
	"youngFemaleHumming.ogg",
	"lightClickOn.ogg",
	"lulabby.ogg",
	"music_box.ogg",
	"prettyHumming1.ogg",
	"prettyHumming2.ogg",
	"prettyHumming3.ogg",
	"prettyHumming4.ogg",
	"sadCry1.ogg",
	"sadCry2.ogg",
	"kids.ogg",
	"youngFemaleHumming.ogg"
];

waitUntil { player distance2D madHouse_tp < 10; };

while {player distance2D madHouse_tp < 400} do {
	sleep 30;

	_rnd = floor (random 19);
	_source = missionNamespace getVariable [format ["mh_soundSource_%1", _rnd], objNull];
	if (isNull _source) then {continue};

	_asd = playSound3D [getMissionPath (format ["sounds\%1", selectRandom _sounds]), _source, true, getPosATL _source, 5, 1, 200, 0, true];
};