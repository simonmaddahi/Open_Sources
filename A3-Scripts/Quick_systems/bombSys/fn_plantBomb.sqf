/*
  Author: Simon "Natic" Maddahi
  Date: 26.11.2019
  
  ### System is not finished ###
*/
params [
        ["_control"],
        ["_pin","",[""]],
        ["_wire","",[""]],
        ["_time","",[""]]
];

createDialog "NC_plantBomb";
_control = findDisplay 100;
_pin = _control ctrl 101;
_wire = _control ctrl 102;
_time = _control ctrl 103;

if (_pin isEqualTo "") exitWith {hint "You need too enter a PIN";};
if (_wire isEqualTo "") exitWith {hint "You need too choose a Wire";};
if (_time isEqualTo "") exitWith {hint "You need too enter a time";};
if (_time < 5) exitWith {hint "the minimum time is 5 Minutes";};
if (playerside == civilian) then {
    _time = "5"; //Minimum Timer 5 Minutes 
};
