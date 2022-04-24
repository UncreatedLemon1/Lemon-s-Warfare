// All Data for Company Module
params [_company, _origin, _info, _owner, _vehicles, _users, _pendingMembers];

_inidbi = ["new", "Companies"] call OO_INIDBI;

// Add Company Name to Database
["write", [_company, "Company Name", _company]] call _inidbi;

// Add Company Information to Database
["write", [_company, "Company County of Origin", _origin]] call _inidbi;

// Add Company Information to Database
["write", [_company, "Company Information", _info]] call _inidbi;

// Add Company Owner to Database
["write", [_company, "Company Owner", _owner]] call _inidbi;

// Add Company Vehicles to Database
["write", [_company, "Company Information", _vehicles]] call _inidbi;

// Add Company Members to Database
["write", [_company, "Company Members", _users]] call _inidbi;

// Add Company Pending Members to Database
["write", [_company, "Company Information", _pendingMembers]] call _inidbi;