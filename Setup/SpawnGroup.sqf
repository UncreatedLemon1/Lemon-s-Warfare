// Spawn a group of enemy AI
params ["_type"];

// Determine types of enemies 
_infantry = "true" configClasses (configfile >> "CfgGroups" >> "East" >> enemyFaction >> "Infantry");
_armor = "true" configClasses (configfile >> "CfgGroups" >> "East" >> enemyFaction >> "Armored");
_mechanized = "true" configClasses (configfile >> "CfgGroups" >> "East" >> enemyFaction >> "Mechanized");
_motorized = "true" configClasses (configfile >> "CfgGroups" >> "East" >> enemyFaction >> "Motorized");
_specOps = "true" configClasses (configfile >> "CfgGroups" >> "East" >> enemyFaction >> "SpecOps");
_support = "true" configClasses (configfile >> "CfgGroups" >> "East" >> enemyFaction >> "Support");

// Select and spawn enemy types
_types = [_infantry, _armor, _mechanized, _motorized, _specOps, _support];
_AO = getPos lmn_activeAO;

_selectedType = selectRandom _types;
_selectedSpawn = selectRandom _selectedType;
_selectedPos = [_AO, 10, 600, 3, 0, 0, 0, [], _ao] call BIS_fnc_findSafePos;

_grp = [_selectedPos, east, _selectedSpawn] call BIS_fnc_spawnGroup;

// Give group a waypoint 
[_grp, _AO, 600] call BIS_fnc_taskPatrol;

// Set group to RED / Alert
_grp setCombatMode "RED";
