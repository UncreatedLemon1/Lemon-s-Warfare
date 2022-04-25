
_inidbi = ["new", "Companies"] call OO_INIDBI;

_companies = "getSections" call _inidbi;

createDialog "LmnOS_Directory";
_control = findDisplay 2003 displayCtrl 1500;

{
	// Current result is saved in variable _x
	_companyName = ["read", [_x, "Company Name"]] call _inidbi;
	_control lbAdd _companyName;
} forEach _companies;

_control ctrlAddEventHandler ["LBSelChanged", {_this execVM "UI\Scripts\textChange.sqf"}];