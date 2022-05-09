// Spawns an item from the Logistics System 

// Get the display selection 
_sel = lbCurSel 1500;
_obj = lbText [1500, _sel];

_obj = _obj createVehicle position player;

[_obj, true, [0, 3, 1], 10] remoteExec ["ace_dragging_fnc_setCarryable", 0, true];

if ((_obj in lmn_obj_walls) OR (_obj in lmn_obj_bunkers)) then {
	[_obj, 1] remoteExec ["ace_cargo_fnc_setSize", 0, true];
};
 
systemChat "Your selected item has been delivered";