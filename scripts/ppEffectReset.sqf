while {true} do {
	_handle = ppEffectCreate ["colorCorrections", 1501]; 
	_handle ppEffectEnable true; 
	_handle ppEffectAdjust [0.9, 0.9, -0.04, [0, 0, 0, 0], [1, 1, 1, 1], [0.299, 0.587, 0.114, 0]]; 
	_handle ppEffectCommit 0; 

	sleep 120;
};