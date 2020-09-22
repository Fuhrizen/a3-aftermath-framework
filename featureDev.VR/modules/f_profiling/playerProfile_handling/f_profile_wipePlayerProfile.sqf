////
//
// ["_profileUID"] call fnc_profile_wipePlayerProfile;
//
////


params ["_profileUID"];
if !([_profileUID] call fnc_profile_checkPlayerExist) exitWith {[]};
_playerDatabase = missionNameSpace getVariable ["player_profile",[]];

{
	if (_x select 0==_profileUID) exitWith {
		_profileData = _x select 1;
		{
				_profileData deleteAt _forEachIndex;
		} forEach _profileData;
		_profileData deleteAt 0;
		1;
	};
} forEach _playerDatabase;