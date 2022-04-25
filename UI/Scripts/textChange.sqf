// Change text based on LB Selection 
params ["_control", "_selectedIndex"];

_inidbi = ["new", "Companies"] call OO_INIDBI;
_companies = "getSections" call _inidbi;

_list = findDisplay 2003 displayCtrl 1500;
_selected = lbCurSel _list;

{
	_companyID = _companies find _x;
	// Current result is saved in variable _x
	if (_selected == _companyID) then 
	{
		_info = ["read", [_x, "Company Information"]] call _inidbi;
		_leader = ["read", [_x, "Company Owner"]] call _inidbi;
		_leader = _leader select 0;
		_speciality = ["read", [_x, "Company Specialty"]] call _inidbi;
		_origin = ["read", [_x, "Company Country of Origin"]] call _inidbi;


		ctrlSetText [1101, _info];
		ctrlSetText [1100, format ["Leader: %1", _leader]];
		ctrlSetText [1102, format ["Specialty: %1", _speciality]];
		ctrlSetText [1103, format ["Origin: %1", _origin]];
		ctrlSetText [1104, _x];

		buttonSetAction [1602, "execVM 'UI\Scripts\ViewVehicles.sqf'"];

	};
} forEach _companies;