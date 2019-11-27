params [
        ["_pin", 0, [0]],
        ["_wire", 1, [1]],
        ["_time", 2, [2]],
        ["_enterPin"],
        ["_clickedWire"]
];
if (_pin != _enterPin) exitWith {
  [] spawn life_fnc_handleBomb;
};
