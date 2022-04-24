_inidbi = ["new", format ["Vehicles_%1_%2", missionName, worldName]] call OO_INIDBI;

while {true} do {
	{
		_ID = vehicles find _x;
		["deleteSection", format ["Saved Vehicles %1", _ID]] call _inidbi;
		// Current result is saved in variable _x
		if ((alive _x) and !(side _x == east)) then {
			["write", [format ["Saved Vehicles %1", _ID], "Type", typeOf _x]] call _inidbi;
			["write", [format ["Saved Vehicles %1", _ID], "Position", getPosASL _x]] call _inidbi;
			["write", [format ["Saved Vehicles %1", _ID], "Direction", getDir _x]] call _inidbi;
			["write", [format ["Saved Vehicles %1", _ID], "Fuel Level", fuel _x]] call _inidbi;
		};
	} forEach vehicles;

	hint "Data Saved";
	sleep 5;
};