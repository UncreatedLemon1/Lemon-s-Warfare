// find roads in map
_roads = [0, 0, 0] nearRoads 20000;

// select road to be ambush point and populate
_ambushCount = 0;
_ambushTotal = random [10, 20, 30];

While {_ambushCount < _ambushTotal} do {
// Select road where ambush will occur
_selectRoad = selectRandom _roads;
_roadPos = position _selectRoad;

// Place mines at ambush point
_mine = createMine ["ATMine", _roadPos, [], 10];
_mine2 = createMine ["ATMine", _roadPos, [], 10];
_mine3 = createMine ["ATMine", _roadPos, [], 10];



_ambushCount = _ambushCount + 1;
};
