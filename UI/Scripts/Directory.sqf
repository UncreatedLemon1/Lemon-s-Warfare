// Populate interfaces 
_companyDB = ["new", "Companies"] call OO_INIDBI;
_companyList = "getSections" call _companyDB;
_list = findDisplay 2 displayCtrl 1500;

{
	// Current result is saved in variable _x
	_index = lbAdd [1500, _x];
	_specialty = ["read", [_x, "Specialty"]] call _companyDB;
	_list lbSetTextRight [_index, _specialty];
} forEach _companyList;

_list ctrlAddEventHandler ["LBSelChanged", {
	params ["_control", "_selectedIndex"];
	hint format ["%1", _selectedIndex];
	_sl = lbText [1500, _selectedIndex];
	_owner = ["read", [_sl, "Owner"]] call _inidbi;

	_members = ["read", [_sl, "Members"]] call _inidbi;
	_members = count _members;
	_members = str _members;

	_about = ["read", [_sl, "Info"]] call _inidbi;

	ctrlSetText [2100, _owner];
	ctrlSetText [2101, _members];
	ctrlSetText [2102, _about];
}];

buttonSetAction [1602, "closeDialog 2; createDialog 'LmnOS_Home'"];
buttonSetAction [1601, "call Lmn_fnc_Enlist"];
buttonSetAction [1605, "closeDialog 2;"];