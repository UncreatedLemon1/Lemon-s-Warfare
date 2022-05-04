params ["_ao"];

// Checkup on the AO location 
while {true} do {
	_enemyCount = east countSide allUnits;
	
	if (_enemyCount < 10) then {
		systemChat "Good work! The area has been cleared, the Russians are regrouping!";
		sleep 3;
		systemChat "Cleaning up old AO...";
		enemyPoint = _ao;
		{
			// Current result is saved in variable _x
			if (side _x == east) then {
				deleteVehicle _x;
			};
		} forEach vehicles;
		{
			// Current result is saved in variable _x
			if (side _x == east) then {
				deleteVehicle _x;
			};
		} forEach allUnits;

		execVM "Setup\Enemy.sqf";
	} else {

	sleep 120;
	};
};