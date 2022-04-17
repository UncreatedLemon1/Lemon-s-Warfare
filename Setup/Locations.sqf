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

//{
//
//
//} forEach nearestLocations [player, Lmn_AOFinder, 50000];

execVM "Setup\SetupAO.sqf"; 
execVM "Setup\Installations.sqf";