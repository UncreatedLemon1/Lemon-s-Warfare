// add actions to items
// arsenalBox addaction ["Cleanup", {execVM "Setup\Cleanup.sqf"}]; Replaced with RemoteExec to JIP and all players
[arsenalBox,["Cleanup", {execVM "Setup\Cleanup.sqf"}]] remoteExec ["addAction", 0, true];

// Setup Map 
[] execVM "Setup\Locations.sqf";

// Define enemy Faction
enemyFaction = "rhs_faction_vdv";

