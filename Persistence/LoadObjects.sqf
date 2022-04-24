_inidbi = ["new", format ["Objects_%1_%2", missionName, worldName]] call OO_INIDBI;

_savedObjects = "getSections" call _inidbi;

{
	// Current result is saved in variable _x
	_type = ["read", [_x, "Type"]] call _inidbi;
	_pos = ["read", [_x, "Position"]] call _inidbi;
	_dir = ["read", [_x, "Direction"]] call _inidbi;

	_obj = _type createVehicle _pos;
	_obj setDir _dir;

} forEach _savedObjects;

sleep 2;
execVM "Persistence\SaveObjects.sqf";