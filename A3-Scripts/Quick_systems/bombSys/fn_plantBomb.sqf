/*
  Author: Simon "Natic" Maddahi
  Date: 26.11.2019
  
  ### System is not finished ###
*/
params [
        ["_control"],
        ["_pin","",[""]],
        ["_wire","",[""]],
        ["_time","",[""]],
        ["_position"],
        ["_count",0,true]
];
if (_count >= 3) exitWith {hint "Es sind zu viele Bomben die deinen Fernzuender stoeren geplantet worden, Bitte warte bis sich die Anzahl an Bomben verringert!";};
createDialog "NC_plantBomb";
_control = findDisplay 100;
_pin = _control ctrl 101;
_wire = _control ctrl 102;
_time = _control ctrl 103;
_position = getPos player;

if (_pin isEqualTo "") exitWith {hint "You need too enter a PIN";};
if (_wire isEqualTo "") exitWith {hint "You need too choose a Wire";};
if (_time isEqualTo "") exitWith {hint "You need too enter a time";};
if (_time < 5) exitWith {hint "the minimum time is 5 Minutes";};
if (playerside == independent) exitWith {hint "You cant plant a Bomb!";};
 _time = "5"; //Minimum Timer 5 Minutes 

//toDo: Create Timer GUI
_bombMarker = createMarker ["ATTENTION: BOMB PLANTED", player];
_bombMarker = setMarkerColor "ColorBlack";
[1, "A Bomb was planted on the following Cords: %1", _position] remoteExec ["life_fnc_Broadcast", 2];
_count++;
[_time] remoteExec ["life_fnc_handleBomb", 1];
[_pin,_wire,_time] remoteExec ["life_fnc_defuseBomb", 1];
