// Select a point, and make it the AO 

Lmn_activeAO = selectRandom (nearestLocations [[0,0,0], Lmn_AOFinder, 50000]);
_locName = name Lmn_activeAO;

[WEST, "Capture", [format ["Capture the area surrounding %1", _locName], format ["Capture %1", _locName], ""], position Lmn_activeAO, true, 1, true, "attack", false] call BIS_fnc_taskCreate;

// Chance of re-inforcements 
_reinforce = random 100;
if (_reinforce > 2) then 
{
	// Script to monitor AI count and bring in reinforcments as needed. 
	execVM "Enemy\Reinforcements.sqf";
};

// Chance of Helicopter 
_heliSupport = random 100;
if (_heliSupport > 2) then {
	// Script to add helicopters spawning from off map to support AI 
	execVM "Enemy\Heli.sqf";
};

// Chance of Jet support 
_jetSupport = random 100;
if (_jetSupport > 2) then {
	// Script to add helicopters spawning from off map to support AI 
	execVM "Enemy\Jet.sqf";
};

// Chance of Minefield present in AO
_minefieldChance = random 100;
if (_minefieldChance > 2) then {
	// Script to add minefield to the AO 
	execVM "Enemy\Minefield.sqf";
};

// Add enemy Static weapons 
_staticWeapons = random 100;
if (_staticWeapons > 2) then {
	execVM "Enemy\Static.sqf";
};

execVM "Enemy\Counter.sqf";

_totalGroups = random [5, 10, 15];
_currentGroups = 0;
while {_currentGroups < _totalGroups} do {
	[]execVM "Setup\SpawnGroup.sqf";
	sleep 1;
	_currentGroups = _currentGroups + 1;
};

