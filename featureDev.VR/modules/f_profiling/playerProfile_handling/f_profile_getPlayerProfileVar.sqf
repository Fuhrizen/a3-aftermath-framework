////
//
// ["_profileUID","_profileName"] call fnc_profile_getPlayerProfileVar;
//
////


params ["_profileUID","_profileName"];
if !([_profileUID] call fnc_profile_checkPlayerExist) exitWith {[]};

_profileData = [_profileUID] call fnc_profile_getPlayerProfile;

{
	if (_x select 0 == _profileName) exitwith {
		_x select 1;
	};
}forEach _profileData;