

// add actions to items
//[arsenalBox,["Cleanup", {execVM "Setup\Cleanup.sqf"}]] remoteExec ["addAction", 0, true];

// Setup Map 
[] execVM "Setup\Locations.sqf";
//[] execVM "Setup\Load.sqf";
// [] execVM "Setup\Logistics.sqf";
// [] execVM "Setup\serverPersistence.sqf";
//[] execVM "Setup\VehiclePersistence.sqf";


// Persistence 
// Add Vehicle persistence
_vehicleData = profileNameSpace getVariable format ["Vehicle_Data_%1_%2", missionName, worldName];

{
	// Current result is saved in variable _x
	_type = _x select 0;
	_position = _x select 1;
	_dir = _x select 2;
	_fuel = _x select 3;

	if (isNil "_VehicleData") then {
 
	} else {
		_veh = _type createVehicle _position;
		_veh setDir _dir;
		_veh setFuel _fuel;
	};

} forEach _vehicleData;


while {true} do {
  // Get Vehicle list variables
	_vehicleList = (getMissionLayerEntities "Player Vehicles") select 0;

	{
		// Current result is saved in variable _x
		_type = typeof _x;
		_position = getPosASL _x; 
		_dir = getDir _x;
		_fuel = fuel _x;

		// Save variable to player profile
		profileNameSpace setVariable [format ["Vehicle_Data_%1_%2", missionName, worldName], + [_loadout, _position, _dir, _fuel]];
	} forEach _vehicleList;
  
  sleep 5;
};