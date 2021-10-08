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
player setVariable["BANNED", false, true];
};

//_queryResult;
player setVariable["BANNED", true, true];
    //Param Übergabe für kick player
    //fn_mresString.sqf get Value of DB - Push to String
    
 //   [_queryResult select 4, _queryResult select 5, _queryResult select 6] remoteExec ["SCRIPTFILE",RSERV];
    



/*
    //EnbMission innerhalb lifeserver (performanter)
    
    _unit ["Banned",false,true] call BIS_fnc_endMission;
    sleep 30;
*/
