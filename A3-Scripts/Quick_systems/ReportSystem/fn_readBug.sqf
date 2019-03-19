/*
	Author: Natic
	Date: 01.01.2019
	Description: Admin can read the Bug report!
*/

disableSerialization;
private ["_query", "_qresult"];
_dialog = findDisplay 8112;
_listbox = _dialog displayCtrl 8123;
_id = this select 0;
_name = this select 1;
_playerid = this select 2;
_titel = this select 3;
_message = this select 4;

if(!dialog) then {createDialog "bug_tracker_admin";}; 
waitUntil {!isNull (_dialog)};

if (life_adminlevel >= 2) then {

switch(_auswahl) do {
	case 1: {
				_query = format["SELECT FROM support_system (id, name, playerid, titel, message) WHERE '%1', '%2', '%3', '%4', '%5'",_id,_name,_playerid,_titel,_message];
				diag_log format["Query: %1",_query];
				waitUntil{!DB_Async_Active};
				[_query,1] call DB_fnc_asyncCall;
				};
				_listbox lbAdd "";
				_listbox lbAdd "---------------";
				_listbox lbAdd "%1",_id;
				_listbox lbAdd "%2",_name;
				_listbox lbAdd "%3",_playerid;
				_listbox lbAdd "%4",_titel;
				_listbox lbAdd "%5",_message;
	};
 };
