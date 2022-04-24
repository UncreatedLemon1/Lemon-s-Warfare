

// add actions to items
//[arsenalBox,["Cleanup", {execVM "Setup\Cleanup.sqf"}]] remoteExec ["addAction", 0, true];

// Setup Map 
[] execVM "Setup\Locations.sqf";

// Persistence 
[] execVM "Persistence\LoadVehicles.sqf";
[] execVM "Persistence\LoadObjects.sqf";