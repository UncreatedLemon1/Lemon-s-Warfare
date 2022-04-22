// Monitor AO airspace and provides support
_heliCount = 0;
_totalHeli = random 3;
while {true} do {
	if (_heliCount < _totalHeli) then {
		// hint "HELI";
		sleep random 180;
		["Russian Helicopters have been spotted in the vicinity of the AO"] remoteExec ["systemChat",0];
		_heliTypes = [
			"RHS_Mi24V_vdv",
			"RHS_Mi24P_vdv"
		];
		_heli = selectRandom _heliTypes;
		_AO = getPos lmn_activeAO;
		_selectedPos = [_AO, 3000, 4000, 3, 0, 0, 0, [], _ao] call BIS_fnc_findSafePos;
		_heli = [_selectedPos, 0, _heli, east] call BIS_fnc_spawnVehicle;
		_grp = _heli select 2;
		[_grp, _AO, 1500] call BIS_fnc_taskPatrol;
		_grp setCombatMode "RED";
		_heliCount = _heliCount + 1;
	};
	sleep random 600;
};
