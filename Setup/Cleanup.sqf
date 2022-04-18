// Cleans up all groups and units of EAST side 

["Capture", "SUCCEEDED", true] call BIS_fnc_taskSetState;
Hint "CLEANING UP...";

{
	// Current result is saved in variable _x
	if (side _x == east) then {
		deleteVehicle _x;
	};
} forEach vehicles;

sleep 2;

{
	// Current result is saved in variable _x
	if (side _x == east) then {
		deleteVehicle _x;
	};
} forEach allUnits; 

sleep 2;

{
	// Current result is saved in variable _x
	if !(markerType _x == "flag_NATO") then {
		deleteMarker _x;
	};
} forEach allMapMarkers;

sleep 2;

["Capture", west, true] call BIS_fnc_deleteTask;

sleep 5;

// Reset the map 
hint "Establishing next AO...";
[] execVM "Setup\Locations.sqf";
