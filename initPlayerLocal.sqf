// Save to Inidbi database 
_playerID = getPlayerUID player;
_playerName = name player;

_playerDataBase = ["new", format ["%1_%2", _playerName, _playerID]] call OO_INIDBI;
_dataBaseExists = "exists" call _playerDataBase;

if (_dataBaseExists) then {
  // Load profile and set character 
  _pos = ["read", ["Player Persistence", "Position"]] call _playerDataBase;
  _dir = ["read", ["Player Persistence", "Direction"]] call _playerDataBase;
  _loadout = ["read", ["Player Persistence", "Loadout"]] call _playerDataBase; 

  // Set character 
  player setPosATL _pos;
  player setDir _dir;
  player setUnitLoadout _loadout;

  // Announce to player 
  systemChat format ["Profile loaded! Welcome back %1!", _playerName];
  sleep 1;
  systemChat "Thank you for joining Lemon's Hardcore Server today!";  

} else {
  // Create Profile
  ["write", ["Player Info", "Player Name", _playerName]] call _playerDataBase;
  ["write", ["Player Info", "Player ID", _playerID]] call _playerDataBase;
  ["write", ["Player Info", "Player Company", "NATO"]] call _playerDataBase;

  // Announce to player 
  systemChat format ["Welcome to Lemon's Hardcore Server %1, I hope you enjoy your stay!", _playerName];
  sleep 1;
  systemChat "Player Profile Created";
};

// Save data 
while {true} do {
  // Get persistent information
  _pos = getPosATL player;
  _dir = getDir player;
  _loadout = getUnitLoadout player;

  // Save to database 
  ["write", ["Player Persistence", "Position", _pos]] call _playerDataBase;
  ["write", ["Player Persistence", "Direction", _dir]] call _playerDataBase;
  ["write", ["Player Persistence", "Loadout", _loadout]] call _playerDataBase; 

  // Loop script  
  sleep 5;
};