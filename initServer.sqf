

// add actions to items
//[arsenalBox,["Cleanup", {execVM "Setup\Cleanup.sqf"}]] remoteExec ["addAction", 0, true];

// Setup Map 
[] execVM "Setup\Locations.sqf";

// Persistence 
[] execVM "Persistence\LoadVehicles.sqf";
[] execVM "Persistence\LoadObjects.sqf";

// Group Management 
[] execVM "Setup\Company_Init.sqf";

// Vehicle Spawner 
v_spawner addaction ["Spawn Vehicle", {
	[] execVM "UI\Scripts\createVehicle.sqf";
}];
