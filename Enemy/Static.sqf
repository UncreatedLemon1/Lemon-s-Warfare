// Spawns static emplacements in the AO 
_static = [

	"UK3CB_MDF_O_M240_High",
	"UK3CB_MDF_O_M240_nest",
	"UK3CB_MDF_O_M252",
	"UK3CB_MDF_O_M2_TriPod",
	"UK3CB_MDF_O_TOW_TriPod",
	"UK3CB_MDF_O_MK19_TriPod",
	"UK3CB_MDF_O_RBS70",
	"UK3CB_MDF_O_Stinger_AA_pod"
];

_staticTotal = random 20;
_staticCount = 0;

while {_staticCount < _staticTotal} do {
	_selectedStatic = selectRandom _static;
	_selectedPos = [position Lmn_activeAO, 5, 1500, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
	_selectedStatic = [_selectedPos, 0, _selectedStatic, east] call BIS_fnc_spawnVehicle;
	_grp = _selectedStatic select 2;
	_grp setCombatMode "RED";
	_staticCount = _staticCount + 1;
};