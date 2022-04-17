// Bring in enemy reinforcements
hint "Enemy receiving reinforcements";
// Find a safe location to spawn items 
_selectedPos = [position Lmn_activeAO, 2000, 2500, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;

// Spawn Helicopter
_heli = "UK3CB_MDF_O_UH1H";
_heli = [_selectedPos, 0, _heli, east] call BIS_fnc_spawnVehicle;

// Spawn infantry composition 
_infantry = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "UK3CB_MDF_O" >> "Infantry" >> "UK3CB_MDF_O_RIF_Squad");
_infantry = _infantry select 0;
_grp = [_selectedPos, east, _infantry] call BIS_fnc_spawnGroup;

// Set orders
_grpUnits = units _grp;
{
	// Current result is saved in variable _x

	_x moveInAny _heli;
} forEach _grpUnits;

_movePos = [position Lmn_activeAO, 100, 1500, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
_wp = _grp addWaypoint [_movePos, 0, 1];
_wp setWaypointType "TR UNLOAD";

_patrolPoint = [position Lmn_activeAO, 100, 1500, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
_wp1 = _grp addWayPoint [_patrolPoint, 0, 2];
_wp1 setWaypointType "SAD";