/*
 Author: Koalas :P

 Description:
 Commits an asynchronous call to ExtDB.

 Parameter(s):
 0: STRING (Query to be ran).
 1: INTEGER (1 = ASYNC + not return for update/insert, 2 = ASYNC + return for query's).
 2: BOOL (True to return a single array, false to return multiple entries mainly for garage).

 Returns:
 Nothing
*/

params [
    ["_queryStmt","",[""]],
    ["_mode",0,[0]],
    ["_multiarr",false,[false]]
];

if (_queryStmt isEqualTo "") exitWith {[]};

private _key = "extDB3" callExtension format ["%1:%2:%3",_mode,missionNamespace getVariable "",_queryStmt];

if (_mode isEqualTo 1) exitWith {true};

_key = call compile format ["%1",_key];
_key = (_key select 1);
private _queryResult = "extDB3" callExtension format ["4:%1", _key];

/* Wait until the request is finished */
waitUntil {
    !(_queryResult isEqualTo "[3]")
};

/* Multi-Part Message */
if (_queryResult isEqualTo "[5]") then {
    _queryResult = "";
    waitUntil {
        _pipe = "extDB3" callExtension format ["5:%1", _key];
        if (_pipe isEqualTo "") exitWith {_loop = false};
        _queryResult = _queryResult + _pipe;
        false
    };
};

_queryResult = call compile _queryResult;
if ((_queryResult select 0) isEqualTo 0) exitWith {
    diag_log format ["extDB3: Protocol Error: %1", _queryResult];
    []
};

private _return = _queryResult select 1;
if (!_multiarr && count _return > 0) then {
    _return = (_return select 0);
};

_return;