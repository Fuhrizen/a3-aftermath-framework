////
//
// ["_profileUID","_profileName"] call fnc_profile_removeFromPlayerProfile;
//
////


params ["_profileUID","_profileName"];
if !([_profileUID] call fnc_profile_checkPlayerExist) exitWith {[]};
_playerDatabase = missionNameSpace getVariable ["player_profile",[]];

{
	if (_x select 0==_profileUID) exitWith {
		_profileData = _x select 1;
		private "_pIndex";
		systemChat "x";
		{
			if (_x select 0 == _profileName) exitWith {
				_profileData deleteAt _forEachIndex;
			};
		} forEach _profileData;
		1;
	};
} forEach _playerDatabase;