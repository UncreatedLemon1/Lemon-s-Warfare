
_totalReinforce = random 10;
_currentReinforce = 0;
while {_currentReinforce < _totalReinforce} do {
	sleep random 600;
	// Bring in enemy reinforcements
	["The enemy are receiving reinforcements! Watch out!"] remoteExec ["systemChat",0];
	// Find a safe location to spawn items 
	_selectedPos = [position Lmn_activeAO, 2000, 2500, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;

	// Spawn Helicopter
	_helicopters = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_mi8");

	_heli = selectRandom _helicopters;
	_grp = [_selectedPos, east, _heli] call BIS_fnc_spawnGroup;

	{
		// Current result is saved in variable _x
		_vehicle = assignedVehicle _x;
		_x moveInAny _vehicle;
	} forEach units _grp;

	// Set orders
	_movePos = [position Lmn_activeAO, 100, 600, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
	_wp = _grp addWaypoint [_movePos, 0, 1];
	_wp setWaypointType "TR UNLOAD";

	_patrolPoint = [position Lmn_activeAO, 100, 600, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
	_wp1 = _grp addWayPoint [_patrolPoint, 0, 2];
	_wp1 setWaypointType "SAD";
};
