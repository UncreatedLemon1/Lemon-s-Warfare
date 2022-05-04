// Spawn enemy forces around an AO 
params ["_oldAO"];

_AO = [enemyPoint, 0, 1000, 0, 20] call BIS_fnc_findSafePos;

// Determine enemy forces present at AO 
_infantryCount = random 20;
_mechanizedCount = random 6;
_armorCount = random 10;
_reconCount = random 10;

// Determine types of enemies 
_infantry = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry");
_armor = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_2s25");
_mechanized = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_BTR80a");
_motorized = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_gaz66");
_recon = "true" configClasses (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_recon");

// Spawn enemy forces 
// Spawn enemy Infantry Groups and assign patrols 
for "_i" from 0 to _infantryCount step 1 do {
	_type = selectRandom _infantry;
	_spawnPos = [_ao, 0, 600, 2, 20] call BIS_fnc_findSafePos;
	_grp = [_spawnPos, east, _type] call BIS_fnc_spawnGroup;
	[_grp, _spawnPos, 500] call BIS_fnc_taskPatrol;
	_grp setCombatMode "RED";
	sleep 0.5;
};

// Spawn enemy Mechanized Groups and assign patrols 
for "_i" from 0 to _mechanizedCount step 1 do {
	_type = selectRandom _mechanized;
	_spawnPos = [_ao, 0, 600, 25, 20] call BIS_fnc_findSafePos;
	_grp = [_spawnPos, east, _type] call BIS_fnc_spawnGroup;
	[_grp, _spawnPos, 500] call BIS_fnc_taskPatrol;
	_grp setCombatMode "RED";
	sleep 0.5;
};

// Spawn enemy Armor Groups and assign patrols 
for "_i" from 0 to _armorCount step 1 do {
	_type = selectRandom _armor;
	_spawnPos = [_ao, 0, 600, 25, 20] call BIS_fnc_findSafePos;
	_grp = [_spawnPos, east, _type] call BIS_fnc_spawnGroup;
	[_grp, _spawnPos, 500] call BIS_fnc_taskPatrol;
	_grp setCombatMode "RED";
	sleep 0.5;
};

// Spawn enemy Recon Groups and assign patrols 
for "_i" from 0 to _reconCount step 1 do {
	_type = selectRandom _recon;
	_spawnPos = [_ao, 0, 600, 2, 20] call BIS_fnc_findSafePos;
	_grp = [_spawnPos, east, _type] call BIS_fnc_spawnGroup;
	[_grp, _spawnPos, 500] call BIS_fnc_taskPatrol;
	_grp setCombatMode "RED";
	sleep 0.5;
};

// Spawn Air Support
[_ao] execVM "Enemy\spawnHeli.sqf";
[_ao] execVM "Enemy\spawnJet.sqf";

// Spawn AA and Arty 
[_ao] execVM "Enemy\Installations.sqf";

// Spawn Ambushes 
[_ao] execVM "Enemy\Ambush.sqf";

// Spawn Minefields 
[_ao] execVM "Enemy\Minefield.sqf";

// Spawn Statics at AO 
[_ao] execVM "Enemy\Static.sqf";

// Check AO for enemy Counts
[_ao] execVM "Enemy\Counter.sqf";