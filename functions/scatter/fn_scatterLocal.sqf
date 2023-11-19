params ["_location"];

sleep 1.5;
player call WBK_CustomFlashlight;

player setPosATL (getPosATL _location);
sleep 1;
player call WBK_CustomFlashlight;