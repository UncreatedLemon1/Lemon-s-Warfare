params ["_object"];
// Get Data and Save it
_ID = profileNameSpace getVariable ["SavedObjects", []];
_ID = count _ID + 1;

while {true} do {
  _pos = getPos _object;
  _dir = getDir _object;
  _dmg = getDmg _object;
  _type = typeOf _object;
  _newValues = [_pos, _dir, _dmg, _type];
  
  _defines = _object getVariable [format ["ObjectData_%1_%2_%3", missionName, worldName, _ID], _newValues];
  
  _updateArray = profileNameSpace getVariable "SavedObjects";
  if (_defines in _updateArray) then {
    _arrayID = _updateArray find _defines; 
    _updateArray set [_arrayID, _defines];
    saveProfileNameSpace;
  } else 
  {
    _updateArray pushback _defines;
    saveProfileNameSpace;
  };
  
  sleep 30;
};
