// Create Markers around the whole map 
_enemyDB = ["new", format ["Enemies %1_%2", missionName, worldName]] call OO_INIDBI;

// Choose enemy count 
_enemyCount = random [500, 1000, 1500];
systemChat format ["Spawning %1 Groups...", _enemycount];


for "_i" from 0 to _enemyCount step 1 do {
	_pos = [centerPoint, 0, 12000, 5, 0, 60, 0, ["Base", "NoMap", "NoMap_1", "NoMap_2", "NoMap_3"]] call BIS_fnc_findSafePos;
	_type = selectRandom ["O_Inf", "O_Recon", "O_AntiAir", "O_Art"];
	
	if (_type == "O_Inf") then {
		_size = random [10, 20, 30];
		_mkr = createMarker [format ["%1_%2", _type, _pos], _pos];
		_mkr setMarkerType _type;
		_mkr setMarkerText format ["Size: %1", _size];
		_mkr setMarkerAlpha 0;
		
		_trg = createTrigger ["EmptyDetector", _pos, true];
		_trg setTriggerActivation ["ANYPLAYER", "PRESENT", true];
		_trg setTriggerArea [1000, 1000, 0 , false, 200];
		_trg setVariable ["type", _type];
		_trg setVariable ["size", _size];
		_trg setVariable ["pos", _pos];
		_trg setVariable ["mkr", _mkr];
		_trg setTriggerStatements [
			"this",
			"_type = thisTrigger getVariable 'type'; _size = thisTrigger getVariable 'size'; _pos = thisTrigger getVariable 'pos'; _grp = [_type, _size, _pos] call Lmn_fnc_spawnGroup; thisTrigger setVariable ['grp', _grp]",
			"_grp = thisTrigger getVariable 'grp'; _mkr = thisTrigger getVariable 'mkr'; if (count units _grp < 3) then {deleteMarker _mkr; deleteVehicle thisTrigger}; {deleteVehicle _x}forEach units _grp; deleteGroup _grp"
		];
	};

	if (_type == "O_Recon") then {
		_size = random [5, 10, 12];
		_mkr = createMarker [format ["%1_%2", _type, _pos], _pos];
		_mkr setMarkerType _type;
		_mkr setMarkerText format ["Size: %1", _size];
		_mkr setMarkerAlpha 0;
		
		_trg = createTrigger ["EmptyDetector", _pos, true];
		_trg setTriggerActivation ["ANYPLAYER", "PRESENT", true];
		_trg setTriggerArea [1000, 1000, 0 , false, 200];
		_trg setVariable ["type", _type];
		_trg setVariable ["size", _size];
		_trg setVariable ["pos", _pos];
		_trg setVariable ["mkr", _mkr];
		_trg setTriggerStatements [
			"this",
			"_type = thisTrigger getVariable 'type'; _size = thisTrigger getVariable 'size'; _pos = thisTrigger getVariable 'pos'; _grp = [_type, _size, _pos] call Lmn_fnc_spawnGroup; thisTrigger setVariable ['grp', _grp]",
			"_grp = thisTrigger getVariable 'grp'; _mkr = thisTrigger getVariable 'mkr'; if (count units _grp < 3) then {deleteMarker _mkr; deleteVehicle thisTrigger}; {deleteVehicle _x}forEach units _grp; deleteGroup _grp"
		];
	};

	if (_type == "O_AntiAir") then {
		_size = random [1, 2, 4];
		_mkr = createMarker [format ["%1_%2", _type, _pos], _pos];
		_mkr setMarkerType _type;
		_mkr setMarkerText format ["Size: %1", _size];
		_mkr setMarkerAlpha 0;
		
		_trg = createTrigger ["EmptyDetector", _pos, true];
		_trg setTriggerActivation ["ANYPLAYER", "PRESENT", true];
		_trg setTriggerArea [3000, 3000, 0 , false, 2000];
		_trg setVariable ["type", _type];
		_trg setVariable ["size", _size];
		_trg setVariable ["pos", _pos];
		_trg setVariable ["mkr", _mkr];
		_trg setTriggerStatements [
			"this",
			"_type = thisTrigger getVariable 'type'; _size = thisTrigger getVariable 'size'; _pos = thisTrigger getVariable 'pos'; _grp = [_type, _size, _pos] call Lmn_fnc_spawnGroup; thisTrigger setVariable ['grp', _grp]",
			"_grp = thisTrigger getVariable 'grp'; _mkr = thisTrigger getVariable 'mkr'; if (count units _grp < 3) then {deleteMarker _mkr; deleteVehicle thisTrigger}; {deleteVehicle _x}forEach units _grp; deleteGroup _grp"
		];
	};

	if (_type == "O_Art") then {
		_size = random [1, 2, 4];
		_mkr = createMarker [format ["%1_%2", _type, _pos], _pos];
		_mkr setMarkerType _type;
		_mkr setMarkerText format ["Size: %1", _size];
		_mkr setMarkerAlpha 0;
		
		_trg = createTrigger ["EmptyDetector", _pos, true];
		_trg setTriggerActivation ["ANYPLAYER", "PRESENT", true];
		_trg setTriggerArea [3000, 3000, 0 , false, 200];
		_trg setVariable ["type", _type];
		_trg setVariable ["size", _size];
		_trg setVariable ["pos", _pos];
		_trg setVariable ["mkr", _mkr];
		_trg setTriggerStatements [
			"this",
			"_type = thisTrigger getVariable 'type'; _size = thisTrigger getVariable 'size'; _pos = thisTrigger getVariable 'pos'; _grp = [_type, _size, _pos] call Lmn_fnc_spawnGroup; thisTrigger setVariable ['grp', _grp]",
			"_grp = thisTrigger getVariable 'grp'; _mkr = thisTrigger getVariable 'mkr'; if (count units _grp < 1) then {deleteMarker _mkr; deleteVehicle thisTrigger}; {deleteVehicle _x}forEach units _grp; deleteGroup _grp"
		];
	};
};


