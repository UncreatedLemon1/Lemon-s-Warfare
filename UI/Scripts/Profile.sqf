// Get player loadout 
_loadout = getUnitLoadout player;
Lmn_Dress_Uniform = {
	comment "Remove existing items";
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;

	comment "Add containers";
	player forceAddUniform "U_B_ParadeUniform_01_US_decorated_F";

	comment "Add items to containers";
	player addItemToUniform "FirstAidKit";
	player addItemToUniform "SmokeShell";
	player addItemToUniform "HandGrenade";
	player addItemToUniform "Chemlight_green";
	player addHeadgear "H_ParadeDressCap_01_US_F";

	comment "Add items";
	player linkItem "ItemRadio";
};

closeDialog 1;


player call Lmn_dress_uniform;
[player, "BRIEFING", "ASIS"] call BIS_fnc_ambientAnim;


// create Camera to look at player 
private _camera = "camera" camCreate position player;
_camera camPrepareTarget player;
_camera camCommitPrepared 0; // needed for relative position
_camera camPrepareRelPos [1, 0.5, 1.8];
_camera cameraEffect ["internal", "back"];
_camera camCommitPrepared 3;
waitUntil { camCommitted _camera };

_camera camPrepareRelPos [0.6, 1, 1.4];
_camera camCommitPrepared 6;
waitUntil { camCommitted _camera };

//_camera camPrepareRelPos [-0, -0, 0];
//_camera camCommitPrepared 3;
//waitUntil { camCommitted _camera };

createDialog "LmnOS_Profile";

sleep 5;
_camera cameraEffect ["terminate", "back"];
camDestroy _camera;

player call BIS_fnc_ambientAnim__terminate;
player setUnitLoadout _loadout;