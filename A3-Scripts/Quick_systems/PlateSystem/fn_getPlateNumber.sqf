/*
Author: McKenzie
Edit by: Natic
Description: gets the license Plate Number of Any Vehicle

*/

private _checkVehicle = CursorTarget;
if ((Vehicle player != player) && (_checkVehicle distance player > 25) ) exitWith {
    hint format ["Du bist zu weit weg um das Kennzeichen eindeutig zu lesen."];
};

if ((_checkVehicle distance player > 20) && (!(currentWeapon player in ["Binocular", "Rangefinder"])) && (Vehicle player isEqualTo player)) exitWith {
    hint format ["Du bist zu weit weg um das Kennzeichen eindeutig zu lesen. Nehme ein Binocular oder einen Rangefinder in die Hand"];
};

if ((_checkVehicle distance player > 50) && (currentWeapon player in ["Binocular", "Rangefinder"]) && (Vehicle player isEqualTo player)) exitWith {
    hint format ["Du bist zu weit weg um das Kennzeichen eindeutig zu lesen."];
};

_checkVehiclePlate = getPlateNumber _checkVehicle;

hint format ["Du konntest folgendes Kennzeichen entziffern: %1",_checkVehiclePlate];