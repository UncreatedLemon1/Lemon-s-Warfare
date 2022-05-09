// Spawns AI group into the worl
params ["_type", "_size", "_pos"];

_infantry = [
	"rhs_msv_emr_sergeant",
	"rhs_msv_emr_RShG2",
	"rhs_msv_emr_grenadier",
	"rhs_msv_emr_medic",
	"rhs_msv_emr_marksman",
	"rhs_msv_emr_machinegunner",
	"rhs_msv_emr_machinegunner_assistant",
	"rhs_msv_emr_junior_sergeant",
	"rhs_msv_emr_strelok_rpg_assist",
	"rhs_msv_emr_grenadier_rpg",
	"rhs_msv_emr_engineer",
	"rhs_msv_emr_efreitor",
	"rhs_msv_emr_arifleman",
	"rhs_msv_emr_arifleman_rpk",
	"rhs_msv_emr_at",
	"rhs_msv_emr_aa"
];

_recon = [
	"rhs_vdv_recon_rifleman_lat",
	"rhs_vdv_recon_arifleman_rpk",
	"rhs_vdv_recon_arifleman",
	"rhs_vdv_recon_efreitor",
	"rhs_vdv_recon_machinegunner_assistant",
	"rhs_vdv_recon_marksman",
	"rhs_vdv_recon_marksman_vss",
	"rhs_vdv_recon_medic",
	"rhs_vdv_recon_rifleman",
	"rhs_vdv_recon_rifleman_akms",
	"rhs_vdv_recon_rifleman_asval",
	"rhs_vdv_recon_rifleman_scout_akm",
	"rhs_vdv_recon_sergeant",
	"rhs_vdv_recon_marksman_asval",
	"rhs_vdv_recon_rifleman_ak103",
	"rhs_vdv_recon_grenadier",
	"rhs_vdv_recon_arifleman_rpk_scout",
	"rhs_vdv_recon_arifleman_scout",
	"rhs_vdv_recon_grenadier_scout"
];

_aa = [
	"rhs_zsu234_aa",
	"rhs_Igla_AA_pod_vdv",
	"RHS_ZU23_VDV"
];

_art = [
	"rhs_2s3_tv",
	"rhs_2s1_tv",
	"rhs_9k79_B",
	"rhs_2b14_82mm_msv",
	"RHS_BM21_VDV_01"
];

_grp = createGroup east;

if (_type == "O_Inf") then {
	for "_i" from 0 to _size step 1 do {
		_unit = selectRandom _infantry;
		_grp createUnit [_unit, _pos, [], 5, "FORM"];
	};
	[_grp, _pos, 500, ["base", "noMap", "NoMap_1", "noMap_2", "noMap_3"]] call BIS_fnc_taskPatrol;
};

if (_type == "O_Recon") then {
	for "_i" from 0 to _size step 1 do {
		_unit = selectRandom _recon;
		_grp createUnit [_unit, _pos, [], 5, "FORM"];
	};
	[_grp, _pos, 500, ["base", "noMap", "NoMap_1", "noMap_2", "noMap_3"]] call BIS_fnc_taskPatrol;
};

if (_type == "O_AntiAir") then {
	for "_i" from 0 to _size step 1 do {
		_unit = selectRandom _aa;
		_pos = [_pos, 0, 250, 20, 0, 20, 0, ["base", "noMap", "noMap_1", "noMap_2", "noMap_3"], _pos] call BIS_fnc_findSafePos;
		_grp = [_pos, 0, _unit, east] call BIS_fnc_spawnVehicle;
		_grp = _grp select 2;
	};
	[_grp, _pos] call BIS_fnc_taskDefend;
};

if (_type == "O_Art") then {
	for "_i" from 0 to _size step 1 do {
		_unit = selectRandom _art;
		_pos = [_pos, 0, 250, 20, 0, 20, 0, ["base", "noMap", "noMap_1", "noMap_2", "noMap_3"], _pos] call BIS_fnc_findSafePos;
		_grp = [_pos, 0, _unit, east] call BIS_fnc_spawnVehicle;
		_grp = _grp select 2;
	};
	[_grp, _pos] call BIS_fnc_taskDefend;
};

_grp;