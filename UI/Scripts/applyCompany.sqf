// Request to join the company. 
_inidbi = ["new", "Companies"] call OO_INIDBI;
_companies = "getSections" call _inidbi;

_playerID = getPlayerUID player;
_playerName = name player;
_playerData = [_playerName, _playerID];

_list = findDisplay 2003 displayCtrl 1500;
_selected = lbCurSel _list;
{
	// Current result is saved in variable _x
	_companyID = _companies find _x;
	if (_selected == _companyID) then {
		_currentList = ["read", [_x, "Company Pending Members"]] call _inidbi;
		_currentList = _currentList + [_playerData];
		_currentList = ["write", [_x, "Company Pending Members", _currentList]] call _inidbi;
	};
} forEach _companies;

 sleep 0.5;
 closeDialog 2003;
 createDialog "LmnOS_Thanks";
