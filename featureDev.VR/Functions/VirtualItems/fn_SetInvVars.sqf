/*
 Author: Koalas :P

 Description:
 Update the virtual items of the player on the client and on the database.

 Parameter(s):
 0: Array (Virtual Items)
 1: Number (Weight)

 Returns:
 Nothing
*/

params [
    ["_array",[],[[]]],
    ["_weight",0,[0]]
];

if (_array isEqualTo []) exitWith {/* ERROR! */};

missionNamespace setVariable ["ClientItems", _array];
missionNamespace setVariable ["ClientWeight", _weight];

private _handler = format ["VICheck_%1", clientOwner];

missionNamespace setVariable [_handler, 1];
publicVariableServer _handler;
missionNamespace setVariable [_handler, nil];