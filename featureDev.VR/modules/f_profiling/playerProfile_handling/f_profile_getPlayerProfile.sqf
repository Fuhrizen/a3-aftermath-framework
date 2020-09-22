////
//
// ["steamUID"] call fnc_profile_getPlayerProfile;
//
////


params ["_profileUID"];
if !([_profileUID] call fnc_profile_checkPlayerExist) exitWith {[]};
_playerDatabase = missionNameSpace getVariable ["player_profile",[]];

{
	if (_x select 0==_profileUID) exitWith {
		_x select 1;
	};
} forEach _playerDatabase;