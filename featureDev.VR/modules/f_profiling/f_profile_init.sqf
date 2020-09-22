////
//
// [] call fnc_profileInit;
// initPlayerServer.sqf
////



_serverProfile = profileNameSpace getvariable ["f_aftermath_profile",[]];
f_aftermath_profileTracker = [];
{
	_profileSpace = _x;
	_profileName = _profileSpace select 0;
	_profileSpace = _profileSpace select 1;
	missionNameSpace setVariable [_profileName,_profileSpace,true];
	f_aftermath_profileTracker pushBack _profileName;
} forEach _serverProfile;