// Monitor AO airspace and provides support
_heliCount = 0;
while {true} do {
	_heliSpawn = random 100;
	if ((_heliSpawn > 2) and (_heliCount < 5)) then {
		// hint "HELI";
		_heliTypes = [
			"UK3CB_MDF_O_AH1Z_NAVY",
			"UK3CB_MDF_O_AH1Z_CS_NAVY",
			"UK3CB_MDF_O_AH1Z_GS_NAVY",
			"UK3CB_MDF_O_UH1H_M240",
			"UK3CB_MDF_O_UH1H_GUNSHIP",
			"UK3CB_MDF_O_UH1H_GUNSHIP_NAVY"
		];
		_heli = selectRandom _heliTypes;
		_AO = getPos lmn_activeAO;
		_selectedPos = [_AO, 5000, 10000, 3, 0, 0, 0, [], _ao] call BIS_fnc_findSafePos;
		_heli = [_selectedPos, 0, _heli, east] call BIS_fnc_spawnVehicle;
		_grp = _heli select 2;
		[_grp, _AO, 3000] call BIS_fnc_taskPatrol;
		_grp setCombatMode "RED";
		_heliCount = _heliCount + 1;
	};
	_timer = random 320;
	sleep _timer;
};