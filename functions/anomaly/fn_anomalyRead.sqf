params ["_object"];

playSound3D [getMissionPath "sounds\consoleTypeConfirm_01.ogg", _object, false, getPosATL _object, 5, 1, 35];
anomalousObjectCount = anomalousObjectCount - 1;
publicVariable "anomalousObjectCount";

0 cutText [ format ["<t size='2.0' colorLink='#0000ff' font='PuristaBold'>Anomalous object found! %1 left!</t>", anomalousObjectCount], "PLAIN DOWN", 1, false, true];
sleep 3;
0 cutFadeOut 1;