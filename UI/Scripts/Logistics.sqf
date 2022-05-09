// Allows player to spawn items into the world 

// Get the class for categories list 
_categories = findDisplay 3 displayCtrl 1501;
_objects = findDisplay 3 displayCtrl 1500;

_categoryList = ["Walls", "Bunkers", "Tents", "Lights", "FOBS", "Misc", "Vehicles"];

{
	// Current result is saved in variable _x
	_categories lbAdd _x;
} forEach _categoryList;

_categories ctrlAddEventHandler ["LBSelChanged", {
	params ["_control", "_selectedIndex"];

	_text = lbText [1501, _selectedIndex];
	_objects = findDisplay 3 displayCtrl 1500;
	
	if (_text == "Walls") then {
		lbClear 1500;
		{
			// Current result is saved in variable _x
			_objects lbAdd _x;
		} forEach lmn_obj_walls;
	};

	if (_text == "Bunkers") then {
		lbClear 1500;
		{
			// Current result is saved in variable _x
			_objects lbAdd _x;
		} forEach lmn_obj_Bunkers;
	};

	if (_text == "Tents") then {
		lbClear 1500;
		{
			// Current result is saved in variable _x
			_objects lbAdd _x;
		} forEach lmn_obj_tents;
	};

	if (_text == "Lights") then {
		lbClear 1500;
		{
			// Current result is saved in variable _x
			_objects lbAdd _x;
		} forEach lmn_obj_lights;
	};		

	if (_text == "FOBS") then {
		lbClear 1500;
		{
			// Current result is saved in variable _x
			_objects lbAdd _x;
		} forEach lmn_obj_FOBS;
	};

	if (_text == "Misc") then {
		lbClear 1500;
		{
			// Current result is saved in variable _x
			_objects lbAdd _x;
		} forEach lmn_obj_Misc;
	};

	if (_text == "Vehicles") then {
		lbClear 1500;
		{
			// Current result is saved in variable _x
			_objects lbAdd _x;
		} forEach lmn_obj_Vehicles;
	};	
}]; 

_objects ctrlAddEventHandler ["LBSelChanged", {
	params ["_control", "_selectedIndex"];

	_text = lbText [1500, _selectedIndex];
	_image = getText (configfile >> "CfgVehicles" >> _text >> "editorPreview");
	ctrlSetText [2022, _image];
}];

buttonSetAction [1620, "ExecVM 'Logistics\spawnObject.sqf'"];
