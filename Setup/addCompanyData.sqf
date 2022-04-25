// All Data for Company Module
params ["_data"];

_inidbi = ["new", "Companies"] call OO_INIDBI;
_company = _data select 0;

_sections = "getSections" call _inidbi;

if (_company in _sections) then {
	exitWith {};
} else 
{

	// Add Company Name to Database
	["write", [_company, "Company Name", _data select 0]] call _inidbi;

	// Add Company Information to Database
	["write", [_company, "Company Country of Origin", _data select 1]] call _inidbi;

	// Add Company Information to Database
	["write", [_company, "Company Information", _data select 2]] call _inidbi;

	// Add Company Owner to Database
	["write", [_company, "Company Owner", _data select 3]] call _inidbi;

	// Add Company Vehicles to Database
	["write", [_company, "Company Vehicles", _data select 4]] call _inidbi;

	// Add Company Members to Database
	["write", [_company, "Company Members", _data select 5]] call _inidbi;

	// Add Company Pending Members to Database
	["write", [_company, "Company Pending Members", _data select 6]] call _inidbi;

	// Add Company Pending Members to Database
	["write", [_company, "Company Specialty", _data select 7]] call _inidbi;
};
