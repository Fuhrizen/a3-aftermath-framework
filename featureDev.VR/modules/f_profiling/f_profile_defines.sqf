//Defines all functions.

//Load Profile
fnc_profileInit =  compile preprocessFile "modules\f_profiling\f_profile_init.sqf";

//Compile/Save Profile
fnc_profileCompile =  compile preprocessFile "modules\f_profiling\f_profile_compile.sqf";


//PLAYER HANDLING

//Check player exists
fnc_profile_checkPlayerExist =  compile preprocessFile "modules\f_profiling\playerProfile_handling\f_profile_checkPlayerExist.sqf";

//Get player profile
fnc_profile_getPlayerProfile =  compile preprocessFile "modules\f_profiling\playerProfile_handling\f_profile_getPlayerProfile.sqf";

//Get player profile Var
fnc_profile_getPlayerProfileVar = compile preprocessFile "modules\f_profiling\playerProfile_handling\f_profile_getPlayerProfileVar.sqf";

//Create Player profile
fnc_profile_createPlayerProfile =  compile preprocessFile "modules\f_profiling\playerProfile_handling\f_profile_createPlayerProfile.sqf";
	
//Add to Player profile
fnc_profile_setPlayerProfile =  compile preprocessFile "modules\f_profiling\playerProfile_handling\f_profile_addToPlayerProfile.sqf";

//Remove Player profile
fnc_profile_removePlayerProfile =  compile preprocessFile "modules\f_profiling\playerProfile_handling\f_profile_removeFromPlayerProfile.sqf";

//Wipe Player profile
fnc_profile_wipePlayerProfile =  compile preprocessFile "modules\f_profiling\playerProfile_handling\f_profile_wipePlayerProfile.sqf";




//END
"Complete";