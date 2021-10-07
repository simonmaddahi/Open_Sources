/*
    File: fn_CheckMultiBan.sqf
    Author: Simon "Natic" Maddahi

    Description:
    Queries to check if player is banned?!
*/

private _query = format ["SELECT id, playerID, playerGUID, duration, reason, bannedBy FROM bans WHERE AND playerGUID LIKE '%1'",getPlayerUID player];
private _queryResult = [_query,2] call DB_fnc_asyncCall;

if !(count _queryResult isEqualTo 0) then {
    _tmp = [_queryResult select 5] call DB_fnc_mresToArray;
    
    player setVariable["PlayerIsBanned",true, true];
    
    if (_tmp isEqualType "") then {_tmp = call compile format ["%1", _tmp];};
    _queryResult set[5, _tmp];
} else {
  player setVariable["PlayerisBanned", false, false];
};

