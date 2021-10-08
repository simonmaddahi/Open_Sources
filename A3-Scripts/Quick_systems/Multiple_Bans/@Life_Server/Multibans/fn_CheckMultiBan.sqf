/*
    File: fn_CheckMultiBan.sqf
    Author: Simon "Natic" Maddahi

    Description:
    Queries to check if player is banned?!
*/

private _unit = param [0,objNull,[objNull]];

if (isNull _unit) exitWith {[]};

private _uid = getPlayerUID _unit;
private _query = format ["SELECT banID, playername, playerid, playerguid, duration, reason, bannedBy FROM multiple_bans WHERE active='1' AND playerguid='%1'",_uid];
private _queryResult = [_query,2] call DB_fnc_asyncCall;

if (count _queryResult isEqualTo 0) exitWith {
_unit setVariable["BANNED", false, true];
_unit setVariable["Ban_duration", NIL, true];
   _unit setVariable["Ban_reason", NIL, true];
   _unit setVariable["Ban_bannedby", NIL, true];
};
   _unit setVariable["BANNED", true, true];
   _unit setVariable["Ban_duration", _queryResult select 4, true];
   _unit setVariable["Ban_reason", _queryResult select 5, true];
   _unit setVariable["Ban_bannedby", _queryResult select 6, true];


/*
    //EnbMission innerhalb lifeserver (performanter)
    
    _unit ["Banned",false,true] call BIS_fnc_endMission;
    sleep 30;
*/
