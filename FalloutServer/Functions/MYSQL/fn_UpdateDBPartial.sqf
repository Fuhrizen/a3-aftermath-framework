/*
	author: Marco
	description: none
	returns: nothing
*/

params [
    ["_uid","",[""]],
    ["_mode",-1,[0]],
    "_value"
];


if (_uid isEqualTo "") exitWith {};

private _query = "";

switch (_mode) do {
    case 0: {
        _query = format ["UPDATE players SET VirtualItems='%1' WHERE pid='%2'",_value,_uid];
    };

    case 1: {
    };
};

if (_query isEqualTo "") exitWith {};

[_query,1] call DB_fnc_asyncCall;