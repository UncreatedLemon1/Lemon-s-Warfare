// Monitor AO airspace and provides support
_jetCount = 0;
while {true} do {
	_jetSpawn = random 100;
	if ((_jetSpawn > 2) and (_jetCount < 3)) then {
		hint "JET";
		_jetTypes = [
			"UK3CB_MDF_O_Mystere_AA1",
			"UK3CB_MDF_O_Mystere_AT1",
			"UK3CB_MDF_O_Mystere_CAS1",
			"UK3CB_MDF_O_Mystere_AA1_NAVY",
			"UK3CB_MDF_O_Mystere_AT1_NAVY",
			"UK3CB_MDF_O_Mystere_CAS1_NAVY"
		];
		_jet = selectRandom _jetTypes;
		_AO = getPos lmn_activeAO;
		_selectedPos = [_AO, 15000, 30000, 3, 0, 0, 0, [], _ao] call BIS_fnc_findSafePos;
		_jet = [_selectedPos, 0, _jet, east] call BIS_fnc_spawnVehicle;
		_grp = _jet select 2;
		[_grp, _AO, 10000] call BIS_fnc_taskPatrol;
		_grp setCombatMode "RED";
		_jetCount = _jetCount + 1;
	};
	_timer = random 320;
	sleep _timer;
};