// Select a point, and make it the AO 

Lmn_activeAO = selectRandom (nearestLocations [[0,0,0], Lmn_AOFinder, 50000]);

[WEST, "Capture", [format ["Capture %1", name Lmn_ActiveAO], format ["Capture the area surrounding %1, be aware that Enemy forces will attempt to stop your attempts and mobilize once they see you!", name Lmn_activeAO], ""], position Lmn_activeAO, true, 1, true, "attack", false] call BIS_fnc_taskCreate;

execVM "Enemy\Counter.sqf";


// Enemy Force Size
_totalGrp = random [20, 35, 50];
_currentGroup = 0;

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

while {_currentGroup < _totalGrp} do {
	[]execVM "Setup\SpawnGroup.sqf";
	sleep 1;
	_currentGroup = _currentGroup + 1;
};
