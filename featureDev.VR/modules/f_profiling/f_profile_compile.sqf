////
//
// [] call fnc_profileCompile;
//
////

f_aftermath_profile = [];
{
	
	_profileName = _x;
	f_aftermath_profile pushBack [_profileName,missionNameSpace getVariable [_profileName,[]]];

}forEach f_aftermath_profileTracker;
profileNameSpace setVariable ["f_aftermath_profile",f_aftermath_profile];
saveProfileNamespace;
"Complete";