if(player getVariable["BANNED",false,true]) 
{ 
  ["Banned",false,true] call BIS_fnc_endMission;
    sleep 30;
};
