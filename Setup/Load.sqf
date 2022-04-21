// Load server profilenamespace data and place objects; 

Lmn_Fnc_CreateVehicle = {
	// private _veh = createVehicle [_this select 0, _this select 1, [], 0, "FORM"];
	private _veh = createVehicle [_this select 0, _this select 1, [], 0, "FORM"];
	_veh enableSimulationGlobal true;
	_veh setVariable ["BIS_enableRandomization", false];
	
	_veh setDir (_this select 2);
	_veh setFuel (this select 3);
	_veh setMass (_this select 4);

	private _textures = (_this select 6);
	private _phaseData = (_this select 7);

	{ _veh setObjectTextureGlobal [_forEachIndex, _x]; } forEach _textures;
	{ _veh animate [_x, (_phaseData select _forEachIndex)]; } forEach (animationNames _veh);
	{ _veh setHitIndex [_forEachIndex , _x, false]; } forEach (_this select 5);
};


// Current result is saved in variable _x
_data = profileNameSpace getVariable format ["Vehicles_%1_%2", missionName, worldName];
{
	// Current result is saved in variable _x
	_veh = _x call Lmn_fnc_createVehicle;
} forEach _data;