// Enemy counter to see when objective is cleared out

while {true} do {
  _enemySides = [side player] call BIS_fnc_enemySides;
  _radius = 1000;
  _nearEnemies = allUnits select {_x distance Lmn_activeAO < _radius AND side _x in _enemySides};
  
  if (count _nearEnemies < 10) then {
    execVM "Setup\Cleanup.sqf";
  };

  sleep 60;
};
