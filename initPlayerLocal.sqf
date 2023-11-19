madhouseOrigin = [];
stalkCamPositions = [];
madhouse_eyes = [];
keysSearched = 0;
eyeHideDistance = 16;
shadowmanDrawDistance = 200;
inMadhouse = false;
slFindOnCooldown = false;
starterLoadout = getUnitLoadout player;

player setVariable ["bullshitID", clientOwner, true];

statueCam = "camera" camCreate getPosATL player;
stalkerCam = "camera" camCreate getPosATL player;

[] execVM "scripts\randomShoulderTap.sqf";
//[] execVM "scripts\userInputReset.sqf";
[] execVM "scripts\madhouseEhReset.sqf";
[] execVM "scripts\ppEffectReset.sqf";
//[] execVM "scripts\madhouseSoundEffects.sqf";
//[] execVM "scripts\madhouseRadio.sqf";

sleep 1;
player call WBK_CustomFlashlight;

_handle = ppEffectCreate ["colorCorrections", 1501]; 
_handle ppEffectEnable true; 
_handle ppEffectAdjust [0.9, 0.9, -0.04, [0, 0, 0, 0], [1, 1, 1, 1], [0.299, 0.587, 0.114, 0]]; 
_handle ppEffectCommit 0; 

statement = {
    [] execVM "scripts\test.sqf";
};
_action = ["FindSL","Csapat Vezető keresése!","",statement,{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
