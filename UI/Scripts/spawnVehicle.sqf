// 
_list = findDisplay 2007 displayCtrl 1500;
_selected = lbCurSel _list;

_inidbi = ["new", "Companies"] call OO_INIDBI;
_companies = "getSections" call _inidbi;
{
	_members = ["read", [_x, "Company Members"]] call _inidbi;
	_playerID = getplayerUID player;

	if (_playerID in _members) then 
	{
		_vehicles = ["read", [_x, "Company Vehicles"]] call _inidbi;
		{
			// Current result is saved in variable _x
			_list lbAdd _x;
		} forEach _vehicles;
	};

	buttonSetAction [1602, "execVM 'UI\Scripts\spawnVehicle.sqf'"];

} forEach _companies;