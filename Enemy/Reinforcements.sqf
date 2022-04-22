
_totalReinforce = random 10;
_currentReinforce = 0;
while {_currentReinforce < _totalReinforce} do {
	// Bring in enemy reinforcements
	["The enemy are receiving reinforcements! Watch out!"] remoteExec ["systemChat",0];
	// Find a safe location to spawn items 
	_selectedPos = [position Lmn_activeAO, 2000, 2500, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;

	// Spawn Helicopter
	_grp = createGroup east;
	_heli = [_selectedPos, (random 360), "RHS_Mi8mt_vdv", _grp] call BIS_fnc_spawnVehicle;
	
	// Spawn Infantry
	_infantry = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry");
	_infantry = selectRandom _infantry;
	_grp2 = [_selectedPos, east, _infantry] call BIS_fnc_spawnGroup;
	{
		// Current result is saved in variable _x
		_x moveInAny (_heli select 0);
	} forEach units _grp2; 

	// Set orders
	_movePos = [position Lmn_activeAO, 100, 600, 40, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
	_wp = _grp2 addWaypoint [_movePos, 0, 1];
	_wp setWaypointType "TR UNLOAD";

	_patrolPoint = [position Lmn_activeAO, 100, 600, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
	_wp1 = _grp2 addWayPoint [_patrolPoint, 0, 2];
	_wp1 setWaypointType "SAD";

	_currentReinforce = _currentReinforce + 1;
	sleep random 1200;
};
