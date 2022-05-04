params ["_ao"];

_helicopters = ["RHS_Ka52_vvsc", "RHS_Mi24P_vvsc"];
while {true} do {
	_heliChance = random 100;

	if (_heliChance < 75) then {

	_offMapMarker = selectRandom ["noMap1", "noMap2", "noMap3", "noMap4"];
	_offMapMarker = getMarkerPos _offMapMarker;
	_spawnPos = [_offMapMarker, 0, 300, 0, 20] call BIS_fnc_findSafePos;
	_heli = selectRandom _helicopters;
	_grp = [_spawnPos, 0, _heli, east] call BIS_fnc_spawnVehicle;
	_heli = _grp select 0;
	_grp = _grp select 2;
	[_grp, _ao, 800] call BIS_fnc_taskPatrol;
	sleep 1200;
	_grp move _spawnPos;
	sleep 600;
	deleteVehicle _heli;
	};

	sleep 340;
};