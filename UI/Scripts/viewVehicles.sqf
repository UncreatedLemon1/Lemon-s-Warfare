// editorPreview = "rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_stryker_m1127_m2_wd.paa";
_inidbi = ["new", "Companies"] call OO_INIDBI;
_companies = "getSections" call _inidbi;

_list = findDisplay 2003 displayCtrl 1500;
_selected = lbCurSel _list;

closeDialog 2003;
createDialog "LmnOS_Vehicles";
{
	_companyID = _companies find _x;
	// Current result is saved in variable _x
	if (_selected == _companyID) then 
	{
		_vehicles = ["read", [_x, "Company Vehicles"]] call _inidbi;

		_cfg1 = getText (configfile >> "CfgVehicles" >> (_vehicles select 0) >> "editorPreview");
		_cfg2 = getText (configfile >> "CfgVehicles" >> (_vehicles select 1) >> "editorPreview");
		_cfg3 = getText (configfile >> "CfgVehicles" >> (_vehicles select 2) >> "editorPreview");
		_cfg3 = getText (configfile >> "CfgVehicles" >> (_vehicles select 3) >> "editorPreview");

		ctrlSetText [1201, format ["%1", _cfg1]];
		ctrlSetText [1202, format ["%1", _cfg2]];
		ctrlSetText [1203, format ["%1", _cfg3]];
		ctrlSetText [1204, format ["%1", _cfg4]];
	};
} forEach _companies;
