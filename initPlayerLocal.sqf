// Add player persistence
_playerData = profileNameSpace getVariable format ["Player_Data_%1_%2", missionName, worldName];

_loadout = _playerData select 0;
_position = _playerData select 1;
_dir = _playerData select 2;

if (isNil "_playerData") then {
 
} else {
  player setUnitLoadout _loadout;
  player setPos _position;
  player setDir _dir;
};

while {true} do {
  // Get player variables
  _loadout = getUnitLoadout player;
  _position = getPos player;
  _dir = getDir player;
  
  // Save variable to player profile
  profileNameSpace setVariable [format ["Player_Data_%1_%2", missionName, worldName], [_loadout, _position, _dir]];
  
  sleep 5;
};
