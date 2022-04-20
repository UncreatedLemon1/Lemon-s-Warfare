// Load server profilenamespace data and place objects; 

_savedObjects = profileNameSpace getVariable [format ["MissionData_%1_%2", missionName, worldName], []];

{
	// Current result is saved in variable _x
	_pos = _x select 0;
	_type = _x select 1;
	_dir = _x select 2;
	_dmg = _x select 3;

	_object = _type createVehicle _pos;
	_object setDir _dir;
	_object setDamage _dmg;

	_object setVariable ["Persist", true];	
} forEach _savedObjects;