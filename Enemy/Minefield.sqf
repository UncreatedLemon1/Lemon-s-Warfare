// Creates Minefield in AO
["The enemy has had time to dig in, beware of mines!"] remoteExec ["systemChat",0];
// Define Mine types
_mines = [
  "ATMine",
  "APERSMine",
  "APERSBoundingMine",
  "SLAMDirectionalMine"
];


// How many Mines are present in the AO? 
_totalMinefields = random 5;
_activeMinefields = 0;

while {_activeMinefields < _totalMinefields} do {
  // Find location for minefield
  _minefieldPos = [position Lmn_activeAO, 10, 800, 3, 0, 0, 0, [], position Lmn_activeAO] call BIS_fnc_findSafePos;

  // place individual mines 
  _totalMines = random 50;
  for "_i" from 0 to _totalMines do {
    _minePos = [_minefieldPos, 1, 30, 2, 0, 0, 0, [], _minefieldPos] call BIS_fnc_findSafePos;
    _mine = selectRandom _mines;
    _mine = createMine [_mine, _minePos, [], 0];
    _mkr = createMarker [format ["%1_Mines", _minePos], _mineFieldPos];
    _mkr setMarkerType "HD_DOT";
    _mkr setMarkerColor "COLORRED";
  };
  
  _sign = "Land_Sign_MinesDanger_English_F" createVehicle _mineFieldPos;



  _activeMinefields = _activeMinefields + 1;
};
