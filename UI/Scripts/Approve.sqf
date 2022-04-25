params ["_company"];

_inidbi = ["new", "Companies"] call OO_INIDBI;

_playerName = name player;
_playerUID = getPlayerUID player;
_playerData = [_playerName, _playerUID];

_applicantList = ["read", [_company, "Company Pending Members"]] call _inidbi;

_applicantID = _applicantList find _playerData;
_newList = _applicantList deleteAt _applicantID;

if (isNil "_newList") then {
	["write", [_company, "Company Pending Members", [["",""]]]] call _inidbi;
} else {
	["write", [_company, "Company Pending Members", _applicantList]] call _inidbi;
};

_members = ["read", [_company, "Company Members"]] call _inidbi;
_members = _members + [_playerData];
_members = ["write", [_company, "Company Members", _members]] call _inidbi;

closeDialog 2005;
execVM "UI\Scripts\CompanyAdminInit.sqf";