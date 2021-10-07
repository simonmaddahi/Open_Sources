[player] remoteExec ["life_fnc_CheckMultipleBans",RSERV];
if(player getVariable["BANNED",true]) 
{ 
  ["Banned",false,true] call BIS_fnc_endMission;
    sleep 30;
};


