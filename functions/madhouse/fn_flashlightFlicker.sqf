if (count madhouse_eyes == 0) then {waitUntil { count madhouse_eyes > 0 }};
sleep (30 + (random 60));
if !(inMadhouse) exitWith {};
_flickerID = playSound3D [getMissionPath "sounds\lightFlicker.ogg", player, true, getPosATL player, 5, 1, 200, 0, true];
//playSound3D [getMissionPath "sounds\lightClickOff.ogg", player];
//player action ["GunLightOff", player];
player call WBK_CustomFlashlight;
sleep (0.1 + (random 0.25));
{_x hideObject false} forEach madhouse_eyes;
//playSound3D [getMissionPath "sounds\lightClickOn.ogg", player];
//player action ["GunLightOn", player];
player call WBK_CustomFlashlight;
sleep (0.2 + (random 0.5));
//playSound3D [getMissionPath "sounds\lightClickOff.ogg", player];
//player action ["GunLightOff", player];
player call WBK_CustomFlashlight;
{_x hideObject true} forEach madhouse_eyes;
sleep 0.75;
//playSound3D [getMissionPath "sounds\lightClickOn.ogg", player];
//player action ["GunLightOn", player];
player call WBK_CustomFlashlight;
stopSound _flickerID;

if (inMadhouse) then {
	[] remoteExec ["wsot_fnc_flashlightFlicker", (clientOwner), false];
};
