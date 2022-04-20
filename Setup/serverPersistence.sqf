// Find all objects in the game
_objects = allMissionObjects "all";
while {true} do {
  {
    // Current result is saved in variable _x
    _persist = _x getVariable ["Persist", false];
    if (_persist) then {
      _pos = getPosASL _x;
      _type = typeOf _x;
      _dir = getDir _x;
      _dmg = damage _x;

      _data = [_pos, _type, _dir, _dmg];


      _database = profileNameSpace getVariable [format ["MissionData_%1_%2", missionName, worldName], []];
      _database pushBack _data;

      profileNameSpace setVariable [format ["MissionData_%1_%2", missionName, worldName], _database];
      saveProfileNameSpace;
      hint "Saved";
    };
  } forEach _objects;
  sleep 10;
};