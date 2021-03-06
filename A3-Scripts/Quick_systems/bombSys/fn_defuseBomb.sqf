params [
        ["_pin", 0, [0]],
        ["_wire", 1, [1]],
        ["_time", 2, [2]],
        ["_display"],
        ["_enterPin"],
        ["_clickedWire"],
        ["_bombVar"],
        ["_trys"]
];
createDialog "NC_defuseBomb";
_display = findDisplay 105;
_enterPin = _display ctrl 106;
_clickedWire = _display ctrl 107;
_trys = 2;

if (((_pin != _enterPin) || (_wire != _clickedWire)) && _trys > 0) exitWith {
  [1] spawn life_fnc_handleBomb;
};

if ((_pin == _enterPin) || (_clickedWire == _wire)) exitWith {
    defusedBomb = true;
    PublicVariable "defusedBomb";
   _bombVar deleteVehicle [1, true];     
};

