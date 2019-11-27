/*
  Author: Simon "Natic" Maddahi
  ### More Infos > fn_plantBomb.sqf ###
*/
params [
["_time", 0, [0]],
["_objects"]
];

if (!defusedBomb) exitWith {};
_objects = nearestObjects [player, [], 10]; //10m do handle the Server performance
if (_time == 0) exitWith {
  _objects setDamage [1, true];
};
