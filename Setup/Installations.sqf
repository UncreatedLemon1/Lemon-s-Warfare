// Add enemy AA and Artillery installations. Utilize enemy Static sites 
_ArtyCount = 0;
_AACount = 0;

_ArtyTotal = random [15, 40, 60];
_AATotal = random [15, 40, 60];

while {true} do {
	if (_ArtyCount < _artyTotal) then {
		_ArtyTypes = ["UK3CB_MDF_O_M119", "UK3CB_MDF_O_M252", "UK3CB_MDF_O_MTVR_MLRS"];
		_arty = selectRandom _artyTypes;
		_findPos = [position Lmn_activeAO, 5, 10000, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
		_arty = [_findPos, 0, _arty, east] call BIS_fnc_spawnVehicle;
		_grp = _arty select 2;
		_grp setCombatMode "RED";
		_artyTotal = _artyTotal + 1;
	};

	if (_AACount < _AAtotal) then {
		_ArtyTypes = ["UK3CB_MDF_O_M2_TriPod", "UK3CB_MDF_O_Stinger_AA_pod", "UK3CB_MDF_O_MTVR_Zu23"];
		_arty = selectRandom _artyTypes;
		_findPos = [position Lmn_activeAO, 5, 10000, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
		_arty = [_findPos, 0, _arty, east] call BIS_fnc_spawnVehicle;
		_grp = _arty select 2;
		_grp setCombatMode "RED";
		_AATotal = _AATotal + 1;
	};

	sleep 1;
};