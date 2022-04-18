// Creates Minefield in AO
[player,"The enemy has had time to dig in, beware of mines!"] remoteExec ["globalChat",0];
// Define Mine types
_mines = [
  "ATMine",
  "APERSMine",
  "APERSBoundingMine",
  "SLAMDirectionalMine",
  "APERSTripMine"
];

// Find location for minefield
_minefieldPos = [position Lmn_activeAO, 10, 400, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;

// How many Mines are present in the AO? 
_totalMines = random 15;
_activeMines = 0;

while {_activeMines < _totalMines} do {
  // place individual mines 
  _minePos = [_minefieldPos, 10, 150, 3, 0, 0, 0, [], _minefieldPos] call BIS_fnc_findSafePos;
  _mine = selectRandom _mines;
  _mine = createMine [_mine, _minePos, [], 0];
  _activeMines = _activeMines + 1;
};
