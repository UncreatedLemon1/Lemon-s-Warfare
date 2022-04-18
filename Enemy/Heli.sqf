// Monitor AO airspace and provides support
_heliCount = 0;
while {true} do {
	if (_heliCount < 5) then {
		// hint "HELI";
		sleep random 180;
		[player,"Russian Helicopters have been spotted in the vicinity of the AO"] remoteExec ["globalChat",0];
		_heliTypes = [
			"RHS_Mi24V_vdv",
			"RHS_Mi24P_vdv"
		];
		_heli = selectRandom _heliTypes;
		_AO = getPos lmn_activeAO;
		_selectedPos = [_AO, 5000, 10000, 3, 0, 0, 0, [], _ao] call BIS_fnc_findSafePos;
		_heli = [_selectedPos, 0, _heli, east] call BIS_fnc_spawnVehicle;
		_grp = _heli select 2;
		[_grp, _AO, 1500] call BIS_fnc_taskPatrol;
		_grp setCombatMode "RED";
		_heliCount = _heliCount + 1;
	};
	_timer = random 320;
	sleep _timer;
};