////
//
// ["steamUID"] call fnc_profile_createPlayerProfile;
//
////

params ["_profileUID"];

if ([_profileUID] call fnc_profile_checkPlayerExist) exitWith {[]};
_playerDatabase = missionNameSpace getVariable ["player_profile",[]];

_newProfile = [_profileUID,[]];
_playerDatabase pushBack _newProfile;
missionNameSpace setVariable ["player_profile",_playerDatabase];