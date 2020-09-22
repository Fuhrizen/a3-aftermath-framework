////
//
// ["steamUID"] call fnc_profile_checkPlayerExist;
//
////


params ["_profileUID"];

_playerDatabase = missionNameSpace getVariable ["player_profile",[]];

_check = {
	if (_x select 0==_profileUID) exitWith {
		true;
	};
} forEach _playerDatabase;
!isNil "_check";