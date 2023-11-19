params ["_object"];

playSound3D [getMissionPath "sounds\consoleTypeConfirm_01.ogg", _object, false, getPosATL _object, 5, 1, 35];
docCount = docCount - 1;
publicVariable "anomalousObjectCount";

deleteVehicle _object;

0 cutText [ format ["<t size='2.0' colorLink='#0000ff' font='PuristaBold'>Research document found! %1 left!</t>", docCount], "PLAIN DOWN", 1, false, true];
sleep 3;
0 cutFadeOut 1;