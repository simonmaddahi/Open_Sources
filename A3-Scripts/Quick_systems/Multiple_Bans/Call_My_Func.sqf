if(player getVariable["BANNED",false,true]) 
{ 
  ["Banned",false,true] call BIS_fnc_endMission;
    sleep 30;
};


//Falls EndMission im Life Server geschieht was besser wäre
[player] remoteExec ["life_fnc_CheckMultipleBans",RSERV];
