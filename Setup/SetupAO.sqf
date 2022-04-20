// Select a point, and make it the AO 
_selectAO = nearestLocations [[0,0,0], Lmn_AOFinder, 50000];
Lmn_activeAO = selectRandom _selectAO;
_locName = name Lmn_activeAO;

[WEST, "Capture", [format ["Capture the area surrounding %1", _locName], format ["Capture %1", _locName], ""], position Lmn_activeAO, true, 1, true, "attack", false] call BIS_fnc_taskCreate;

_mkr = createMarker ["ActiveAO", position Lmn_activeAO];
_mkr setMarkerShape "ELLIPSE";
_mkr setMarkerColor "ColorRed";
_mkr setMarkerBrush "DIAGGRID";
_mkr setMarkerAlpha 0.5;
_mkr setMarkerSize [600, 600];

_mkr2 = createMarker ["ActiveAO_Flag", position Lmn_activeAO];
_mkr2 setMarkerType "Flag_Russia";

// Add infantry and ground elements to defend AO
execVM "Setup\SpawnGroup.sqf";

// Chance of re-inforcements 
_reinforce = random 100;
if (_reinforce > 25) then 
{
	// Script to monitor AI count and bring in reinforcments as needed. 
	execVM "Enemy\Reinforcements.sqf";
};

// Chance of Helicopter 
_heliSupport = random 100;
if (_heliSupport > 25) then {
	// Script to add helicopters spawning from off map to support AI 
	execVM "Enemy\Heli.sqf";
};

// Chance of Jet support 
_jetSupport = random 100;
if (_jetSupport > 25) then {
	// Script to add helicopters spawning from off map to support AI 
	execVM "Enemy\Jet.sqf";
};

// Chance of Minefield present in AO
_minefieldChance = random 100;
if (_minefieldChance > 25) then {
	// Script to add minefield to the AO 
	execVM "Enemy\Minefield.sqf";
};

// Add enemy Static weapons 
_staticWeapons = random 100;
if (_staticWeapons > 25) then {
	execVM "Enemy\Static.sqf";
};

// Counts AI to check how many are left 
execVM "Enemy\Counter.sqf";


