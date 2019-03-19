/*
	Author: Natic
	Date: 02.01.2019
	Reclaimer: Nobody is allowed to use/edit this Script without my permissions!
*/



private ["_sosItem","_cords","_ran"];

_sosItem = _this select 0;

if(isNull player OR !alive player) exitWith {};
if(playerSide in [west, east, independent]) exitWith {
hint format ["Der Panic Button funktioniert bei dir nicht"];
};
if(life_istazed OR life_knockOut) exitWith {
	hint format["Da du draufgefallen bist, hast du den Knopf zerstört!"];
	}; 

if(!([false, _sosItem ,1] call life_fnc_handleInv)) exitWith {
	hint format["Du hast kein Panic Button !"];
	};
_ran = floor(random(100));

if (_ran <= 30) exitWith {
	hint format["Der Panic Button scheint kaputt zu sein"];
}

if (_ran > 30) then {

_cords = mapGridPosition player;

sleep (1 + random(5));

[4,format["<t size='2' color='#EAF200'>• • • - - - • • •</t><br/><t size='2.7' color='#00B4F5'>S O S</t><br/><t size='2' color='#EAF200'>• • • - - - • • •</t><br/><br/><br/><t color='#ff0000' size='1.5'>%1</t><br/><br/><t color='#6DCE5D' size='1.3'>%2</t><br/><br/><t size='1.2'><br/>hat SOS benutzt</t><br/>", profileName, _cords]] remoteExec ["life_fnc_broadcast",west,independent,east]; 
for "_i" from 0 to 7 step 1 do {
	[0,format["SOS -- %1", profileName, _cords]] remoteExec ["life_fnc_broadcast",west,independent,east];
};

if(player getVariable "inSOS") exitWith {};

[] spawn {
	player setVariable ["inSOS",true,true];
	sleep 30;
	player setVariable ["inSOS",false,true];
};
	//playSound "sos";
};
