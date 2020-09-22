////
//
// ["_profileUID","_profileNewName","_profileNewData"] call fnc_profile_addToPlayerProfile;
//
////


params ["_profileUID","_profileNewName","_profileNewData"];
if !([_profileUID] call fnc_profile_checkPlayerExist) exitWith {[]};
_playerDatabase = missionNameSpace getVariable ["player_profile",[]];

if (isNil "_profileNewData") then {_profileNewData = [];};
{
	if (_x select 0==_profileUID) exitWith {
		_profileData = _x select 1;
		
		{
			if (_x select 0 == _profileNewName) exitWith {
				_profileData deleteAt _forEachIndex;
			};
		} forEach _profileData;
		
		_profileData pushBack [_profileNewName,_profileNewData];
		1;
	};
} forEach _playerDatabase;