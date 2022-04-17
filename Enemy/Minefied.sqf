// Creates Minefield in AO

// Define Mine types
_mines = [
  "ATMine",
  "APERSMine",
  "APERSBoundingMine",
  "SLAMDirectionalMine",
  "APERSTripMine"
];

// Find location for minefield
_minefieldPos = [position Lmn_activeAO, 10, 600, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;
// Debug 
if (debug) then { 
	_mkr = createMarker [format ["%1_marker", _minefieldPos], _minefieldPos];
	_mkr setMarkerType "hd_flag";
  _mkr setMarkerColor "COLORRED";
	_mkr setMarkerText "Minefield";
};

// How many Mines are present in the AO? 
_totalMines = random [10, 20, 30];

while {_activeMines < _totalMines} do {
  // place individual mines 
  _minePos = [_minefieldPos, 10, 150, 3, 0, 0, 0, [], position _minefieldPos] call BIS_fnc_findSafePos;
  _mine = selectRandom _mines;
  _mine = createMine [_mine, _minePos, [], 0];
  _activeMines = _activeMines + 1;
};
