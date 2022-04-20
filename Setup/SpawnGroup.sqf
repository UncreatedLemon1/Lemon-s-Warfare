// Spawn a group of enemy AI
params ["_type"];

// Determine types of enemies 
_infantry = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry");
_armor = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_2s25");
_mechanized = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_BTR80a");
_motorized = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_gaz66");
_specOps = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_recon");
_support = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_Ural");


// Select and spawn enemy types
_types = [_infantry, _armor, _mechanized, _motorized, _specOps, _support];
_AO = getPos lmn_activeAO;


_totalGroups = random [5, 10, 15];
_currentGroups = 0;

while {_currentGroups < _totalGroups} do {
	_selectedType = selectRandom _types;
	_selectedSpawn = selectRandom _selectedType;
	_selectedPos = [_AO, 10, 400, 10, 0, 0, 0, [], _ao] call BIS_fnc_findSafePos;

	_grp = [_selectedPos, east, _selectedSpawn] call BIS_fnc_spawnGroup;

	// Give group a waypoint 
	[_grp, _AO, 500] call BIS_fnc_taskPatrol;

	// Set group to RED / Alert
	_grp setCombatMode "RED";
	_currentGroups = _currentGroups + 1;

	sleep 1;

};
