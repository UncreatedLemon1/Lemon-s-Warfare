_inidbi = ["new", format ["Vehicles_%1_%2", missionName, worldName]] call OO_INIDBI;

_savedVehicles = "getSections" call _inidbi;

{
	// Current result is saved in variable _x
	_type = ["read", [_x, "Type"]] call _inidbi;
	_pos = ["read", [_x, "Position"]] call _inidbi;
	_dir = ["read", [_x, "Direction"]] call _inidbi;
	_fuel = ["read", [_x, "Fuel Level"]] call _inidbi;

	_veh = _type createVehicle _pos;
	_veh setDir _dir;
	_veh setFuel _fuel;

} forEach _savedVehicles;

sleep 2;
execVM "Persistence\SaveVehicles.sqf";