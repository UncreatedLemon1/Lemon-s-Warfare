// Monitor AO airspace and provides support
_jetCount = 0;
_totalJets = random 3;
while {true} do {
	if (_jetCount < _totalJets) then {
		["Reports are coming in that Russian Jets are deploying to the AO!"] remoteExec ["systemChat",0];
		// hint "JET";
		_jetTypes = [
			"rhs_mig29s_vvsc",
			"rhs_mig29sm_vvsc",
			"RHS_Su25SM_vvsc"
		];
		_jet = selectRandom _jetTypes;
		_AO = getPos lmn_activeAO;
		_selectedPos = [_AO, 15000, 30000, 3, 0, 0, 0, [], _ao] call BIS_fnc_findSafePos;
		_jet = [_selectedPos, 0, _jet, east] call BIS_fnc_spawnVehicle;
		_grp = _jet select 2;
		[_grp, _AO, 3000] call BIS_fnc_taskPatrol;
		_grp setCombatMode "RED";
		_jetCount = _jetCount + 1;
	};

	sleep random 600;
};
