// find roads in map
_roads = CenterPoint nearRoads 20000;

// select road to be ambush point and populate
_ambushCount = 0;
_ambushTotal = random [10, 20, 30];

While {_ambushCount < _ambushTotal} do {
	// Select road where ambush will occur
	_selectRoad = selectRandom _roads;
	_roadPos = position _selectRoad;

	// Place mines at ambush point
	_mineAmount = random 10;
	for "_i" from 0 to _mineAmount do {
		_mine = createMine ["ATMine", _roadPos, [], 10];
	};

	// Add Machinegunner and RPG teams to ambush area 
	_grp = createGroup east; 
	_grpsize = random 10;
	for "_i" from 0 to _grpSize do {
		_soldierType = selectRandom ["rhs_vdv_RShG2", "rhs_vdv_LAT", "rhs_vdv_machinegunner", "rhs_vdv_at"];
		_soldier = _grp createUnit [_soldierType, _roadPos, [], 15, "FORM"];		
	};
	[_grp, _roadPos] call BIS_fnc_taskDefend;

	// Add Wreck on road area 
	_wrecks = [
		"Land_V3S_wreck_F",
		"UK3CB_UH1H_Wreck",
		"Land_Wreck_Truck_dropside_F",
		"Land_Wreck_T72_hull_F",
		"Land_Wreck_UAZ_F",
		"Land_PowerGenerator_wreck_F",
		"Land_TrailerCistern_wreck_F",
		"Land_Wreck_Offroad_F",
		"Land_Wreck_LT_01_F",
		"Land_Wreck_Van_F",
		"UK3CB_M60A3_Wreck",
		"M113Wreck",
		"UK3CB_Lada_Wreck",
		"Land_Wreck_Car3_F",
		"Land_Wreck_Car_F",
		"Land_Wreck_Car2_F",
		"Land_Wreck_Skodovka_F",
		"Land_Wreck_HMMWV_F",
		"Land_Wreck_MBT_04_F"
	];
	_chanceofWreck = random 100;
	if (_chanceofWreck > 50) then {
		_selectWreck = selectRandom _wrecks;
		_selectWreck createVehicle _roadPos;
	};

	_ambushCount = _ambushCount + 1;
};
