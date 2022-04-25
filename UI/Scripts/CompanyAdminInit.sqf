_inidbi = ["new", "Companies"] call OO_INIDBI;
_companies = "getSections" call _inidbi;
_playerUID = getPlayerUID player;


{
	// Current result is saved in variable _x
	_ownerID = ["read", [_x, "Company Owner"]] call _inidbi;
	//_ownerID = _ownerID select 1;
	if (_playerUID in _ownerID) then {
		createDialog "LmnOS_Administration";

		_currentMemberList = ["read", [_x, "Company Members"]] call _inidbi;
		{
			// Current result is saved in variable _x
			_currentMembers = findDisplay 2005 displayCtrl 1500;
			_membersNames = _x select 0;
			_currentMembers lbAdd _membersNames;
		} forEach _currentMemberList;
		
		_applicantList = ["read", [_x, "Company Pending Members"]] call _inidbi;
		{
			// Current result is saved in variable _x
			_applicants = findDisplay 2005 displayCtrl 1501;
			_newMembers = _x select 0;
			_applicants lbAdd _newMembers;
		} forEach _applicantList;

		company = _x;
		buttonSetAction [1600, "[company] execVM 'UI\Scripts\Approve.sqf'"];
	};
} forEach _companies;
