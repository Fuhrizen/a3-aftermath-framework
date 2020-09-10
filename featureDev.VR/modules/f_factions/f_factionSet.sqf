// fnc_factionSet =  compile preprocessFile "modules\f_factions\f_factionSet.sqf";
// ["_target","_faction"] call fnc_factionSet;
params ["_target","_faction"];


//

{
	
	_x setVariable ["f_aftermath_faction",_faction,true];
	_clientID = owner _x;
	{
		_faction = player getVariable ["f_aftermath_faction","Independent"];
		profileNamespace setVariable ["f_aftermath_faction",_faction];
		} remoteExec ["bis_fnc_call", _clientID]; 
		
} forEach _target;
systemChat "Factions Updated";

//