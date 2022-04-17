// Finds all locations and sets them up as objectives 
Lmn_AOFinder = [
	"Area",
	"BorderCrossing",
	"CityCenter",
	"CivilDefense",
	"CulturalProperty",
	"DangerousForces",
	"Flag",
	"FlatArea",
	"FlatAreaCity",
	"FlatAreaCitySmall",
	"Hill",
	"HistoricalSite",
	"Invisible",
	// "Mount",
	"Name",
	"NameCity",
	"NameCityCapital",
	"NameLocal",
	// "NameMarine",
	"NameVillage",
	"RockArea",
	"SafetyZone",
	"Strategic",
	"StrongpointArea",
	"VegetationBroadleaf",
	"VegetationFir",
	"VegetationPalm",
	"VegetationVineyard",
	"ViewPoint"
];
{
	// Debug 
	if (debug) then { 
		_mkr = createMarker [format ["%1_%2_marker", _x, position _x], position _x];
		_mkr setMarkerType "hd_flag";
		_mkr setMarkerColor "COLORBLUE";
		_mkr setMarkerText format ["%1", _x];
	};

} forEach nearestLocations [player, Lmn_AOFinder, 50000];

execVM "Setup\SetupAO.sqf"; 
execVM "Setup\Installations.sqf";