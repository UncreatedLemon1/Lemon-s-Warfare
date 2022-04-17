// Add enemy AA and Artillery installations. Utilize enemy Static sites 
_ArtyCount = 0;
_AACount = 0;

_ArtyTotal = random [10, 20, 25];
_AATotal = random [10, 20, 25];

while {true} do {
	if (_ArtyCount < _artyTotal) then {
		_ArtyTypes = ["RHS_BM21_VDV_01", "rhs_D30_at_vdv", "rhs_D30_vdv"];
		_arty = selectRandom _artyTypes;
		_findPos = [position Lmn_activeAO, 5, 5000, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
		_arty = [_findPos, 0, _arty, east] call BIS_fnc_spawnVehicle;
		_grp = _arty select 2;
		_grp setCombatMode "RED";
		_ArtyCount = _ArtyCount + 1;
	};

	if (_AACount < _AAtotal) then {
		_ArtyTypes = ["rhs_Igla_AA_pod_vdv", "rhs_gaz66_zu23_vv", "RHS_Ural_Zu23_VV_01", "RHS_ZU23_VDV"];
		_arty = selectRandom _artyTypes;
		_findPos = [position Lmn_activeAO, 5, 5000, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
		_arty = [_findPos, 0, _arty, east] call BIS_fnc_spawnVehicle;
		_grp = _arty select 2;
		_grp setCombatMode "RED";
		_AACount = _AACount + 1;
	};

	sleep 1;
};