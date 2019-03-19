/*
Author: McKenzie
Edit: Natic
Description: Provides the Owner of the NumberPlate
*/

params [
  ["_PlateNumber","",[""]]
];
private["_query","_owner","_plate"];

if (!(side player in [WEST,INDEPENDENT])) exitWith {
    hint format["Du hast keinen Zugang, zu einem Haltersystem"];
};

if (Vehicle player isEqualTo player) exitWith {
     hint format ["Du musst in einem Fahrzeug sitzen um den Bordcomputer bedienen zu können"];
};

if (_PlateNumber isEqualTo " ") exitWith {
    Hint format ["Ungültiges Nummernschild"];
};

_query = format["SELECT FROM vehicles (plate) WHERE '%1'",_plate];
                diag_log format["Query: %1",_query];
                waitUntil{!DB_Async_Active};
                [_query,1] call DB_fnc_asyncCall;

if (_plate == _PlateNumber) then {
	_query = format["SELECT FROM vehicles (owner) WHERE '%1'",_owner];
                diag_log format["Query: %1",_query];
                waitUntil{!DB_Async_Active};
                [_query,1] call DB_fnc_asyncCall;
hint format["Der Halter des Fahrzeuges ist: %1",_owner];
} else {
	hint format["Das Kennzeichen ist ungültig"];
};