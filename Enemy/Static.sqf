// Spawns static emplacements in the AO 
_static = [
	"rhs_Metis_9k115_2_vdv",
	"rhs_KORD_VDV",
	"rhs_KORD_high_VDV",
	"RHS_NSV_TriPod_VDV",
	"rhs_SPG9M_VDV",
	"RHS_ZU23_VDV",
	"RHS_AGS30_TriPod_VDV",
	"rhs_Igla_AA_pod_vdv",
	"rhs_Kornet_9M133_2_vdv"
];

_staticTotal = random 5;
_staticCount = 0;

while {_staticCount < _staticTotal} do {
	_selectedStatic = selectRandom _static;
	_selectedPos = [position Lmn_activeAO, 5, 500, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
	_selectedStatic = [_selectedPos, 0, _selectedStatic, east] call BIS_fnc_spawnVehicle;
	_grp = _selectedStatic select 2;
	_grp setCombatMode "RED";
	_staticCount = _staticCount + 1;
};