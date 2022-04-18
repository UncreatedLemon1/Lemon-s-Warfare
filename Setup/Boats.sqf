
_totalBoats = random [10, 20, 30];
while {true} do {
	_boatCount = "O_Boat_Armed_01_hmg_F" countType vehicles;
	
	if (_boatCount < _totalBoats) then {
		_spawns = Lmn_AOFinder select 18;
		_spawns = selectRandom _spawns;
		_spawnLoc = getPos _spawns;
		_boat = [_spawnLoc, 600, "O_Boat_Armed_01_hmg_F", east] call BIS_fnc_spawnVehicle;
		// Give group a waypoint 
		[_boat, _spawnLoc, 600] call BIS_fnc_taskPatrol;

		// Set group to RED / Alert
		_grp setCombatMode "RED";
	};
};