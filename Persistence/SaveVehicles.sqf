_inidbi = ["new", format ["Vehicles_%1_%2", missionName, worldName]] call OO_INIDBI;
_companies =  "getSections" call _inidbi;

while {true} do {
	{
		["deleteSection", format ["Saved Vehicles %1", _x]] call _inidbi;
		_vehicles = ["read", [_x, "Company Vehicles"]] call _inidbi;
		{
			// Current result is saved in variable _x
			if (alive _x) then {
			["write", [format ["Saved Vehicles %1", _ID], "Type", typeOf _x]] call _inidbi;
			["write", [format ["Saved Vehicles %1", _ID], "Position", getPosASL _x]] call _inidbi;
			["write", [format ["Saved Vehicles %1", _ID], "Direction", getDir _x]] call _inidbi;
			["write", [format ["Saved Vehicles %1", _ID], "Fuel Level", fuel _x]] call _inidbi;
		} forEach _vehicles;
		
		// Current result is saved in variable _x

	} forEach _companies;

	hint "Data Saved";
	sleep 5;
};