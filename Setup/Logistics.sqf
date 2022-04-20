// Start of logistics and FOB spawning 
// Define Variables
Lmn_FobType = "Land_Cargo20_EMP_Training_F";

// Add actions to world
[arsenalBox,["Logistics Menu", {_object = lmn_fobType createVehicle position player; 
	_object setVariable ["Persist", true]
	//[_object] execVM "Setup\serverPersistence.sqf";
	}]] remoteExec ["addAction", 0, true];
