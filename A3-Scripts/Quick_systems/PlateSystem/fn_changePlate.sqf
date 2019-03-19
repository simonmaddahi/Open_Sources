/*
Author: McKenzie
Edit by: Natic
Description: Allows to Customize the Number Plate of any Vehicle. 

*/
params[
  ["_myPlate","",[""]]
];
private["_query"];
private _myVehicle = CursorTarget;

if (!(_myVehicle isKindOf "Car")) exitWith {
    hint format["Du kannst nur an Bodenfahrzeuge das Nummernschild verändern!"];
};

if (_myVehicle distance Player > 6) exitWith {
     hint format["Du stehst zu weit weg, um das Nummernschild zu verändern!"];
};

if (side player isEqualTo west) exitWith {
    hint format["Du bist im Dienst, lasse lieber die Finge davon"];
};

if (_myPlate isEqualTo " ") exitWith {
	hint format ["Das Nummernschild ist ungültig"];
};

life_action_inUse = true;
_action = [
 format ["Soll das Nummernschild permanent geändert werden?"],
 "Nummernschild - Generator",
 localize "STR_Global_Yes",
 localize "STR_Global_No"
] call BIS_fnc_guiMessage;

private _oldPlate = getPlateNumber _myVehicle;
if (_action) then {

 _query = format["SELECT FROM vehicles (plate) WHERE '%1'",_oldPlate];
                diag_log format["Query: %1",_query];
                waitUntil{!DB_Async_Active};
                [_query,1] call DB_fnc_asyncCall;

 
 _query = format["INSERT INTO vehicles WHERE (plate) '%1'",_myplate]; 
                diag_log format["Query: %1",_query];
                waitUntil{!DB_Async_Active};
                [_query,1] call DB_fnc_asyncCall;

_myVehicle setPlateNumber _myPlate;
hint format["Du hast dein Nummernschild erfolgreich von %1 in %2 umgemeldet",_oldPlate,_myPlate];
} else {
		_myVehicle setPlateNumber _myPlate;
		hint format["Du hast dein Nummernschild verändert!"];
};

