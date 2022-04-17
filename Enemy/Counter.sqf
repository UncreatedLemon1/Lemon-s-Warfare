// Enemy counter to see when objective is cleared out

while {true} do {
  sleep 10;
  _ao = getPos Lmn_activeAO;
  _activeAI = [];
  _aiCount = 0;
  {
    // Current result is saved in variable _x
    if ((_x distance _ao < 700) and (side _x == east)) then {
      _activeAI pushBack _x;
      _aiCount = count _activeAI;
      };
  } forEach allUnits;

  if (_aiCount < 10) then {
    execVM "Setup\Cleanup.sqf";
    [player,"Nice work! Take some time to re-arm and prep for your next mission tasking"] remoteExec ["globalChat",0];
  } else {
    //hint format ["%1", _aiCount];
  };
  sleep 10;
};
