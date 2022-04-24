_inidbi = ["new", format ["Objects_%1_%2", missionName, worldName]] call OO_INIDBI;

while {true} do {
	{
		// Current result is saved in variable _x
		if (markerType _x == "flag_NATO") then {
			_mkrPos = getMarkerPos _x;
			_nearObjs = _mkrPos nearObjects 200;

			{
				if (alive _x) then {
					// Current result is saved in variable _x
					["deleteSection", format ["Saved Objects %1", position _x]] call _inidbi;
					["write", [format ["Saved Objects %1", position _x], "Type", typeOf _x]] call _inidbi;
					["write", [format ["Saved Objects %1", position _x], "Position", getPosASL _x]] call _inidbi;
					["write", [format ["Saved Objects %1", position _x], "Direction", getDir _x]] call _inidbi;
				};
			} forEach _nearObjs;
		};
	} forEach allMapMarkers;

	hint "Data Saved";
	sleep 5;
};