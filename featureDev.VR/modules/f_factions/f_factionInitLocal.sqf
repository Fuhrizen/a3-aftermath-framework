
_steamUID = getPlayerUID player;


//

	_faction = profileNamespace getVariable ["f_aftermath_faction","Independent"];
	player setVariable ["f_aftermath_faction",_faction,true];
	systemChat "Faction Loaded";
	
//