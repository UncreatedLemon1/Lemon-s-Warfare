params ["_ao"];

_jets = ["rhs_mig29s_vvsc","RHS_Su25SM_vvsc"];
while {true} do {
	_jetChance = random 100;

	if (_jetChance < 75) then {
	_offMapMarker = selectRandom ["noMap1", "noMap2", "noMap3", "noMap4"];
	_offMapMarker = getMarkerPos _offMapMarker;
	_spawnPos = [_offMapMarker, 0, 300, 0, 20] call BIS_fnc_findSafePos;
	_jet = selectRandom _jets;
	_grp = [_spawnPos, 0, _jet, east] call BIS_fnc_spawnVehicle;
	_jet = _grp select 0;
	_grp = _grp select 2;
	[_grp, _ao, 1500] call BIS_fnc_taskPatrol;
	sleep 1200;
	_grp move _spawnPos;
	sleep 600;
	deleteVehicle _jet;
	
	sleep 340;
	};
};