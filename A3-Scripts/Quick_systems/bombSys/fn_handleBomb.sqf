/*
  Author: Simon "Natic" Maddahi
  ### More Infos > fn_plantBomb.sqf ###
*/
params [
["_time", 0, [0]],
["_objects"],
["_getBombPos"]
];

if (!defusedBomb) exitWith {};
_getBombPos = [["PlantedBomb_%1" getPos],_getBombId]; //not working so, _getBombId missing
_objects = nearestObjects [_getBombPos, [], 10]; //10m do handle the Server performance
if (_time == 0) exitWith {
  _objects setDamage [1, true];
  //Create here the Explosion
};
