
if (player getVariable["isConnecting",true]) then {
	
	//Retrieve player data. 
	_steamUID = getplayerUID player; 
	
	//Prevent Data reloading
	player setVariable ["isConnecting",false];
	
	if !([_steamUID] call fnc_profile_checkPlayerExist) then { 
		
		//First time connecting.
		[_steamUID] call fnc_profile_createPlayerProfile; 

	}else { 
	
		//Existing player connecting. 

		//Apply Inventory 
		_loadout = [_steamUID,"loadout"] call fnc_profile_getPlayerProfileVar; 
		player setUnitLoadout _loadout; 
		// 
	}; 
};
