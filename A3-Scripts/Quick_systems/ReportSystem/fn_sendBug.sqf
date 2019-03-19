/*
	Author: Natic
	Date: 29.12.2018
	Description: Send a Bug report to the Admins!
*/

disableSerialization;
private ["_query", "_qresult"];
_uid = getPlayerUID player;
_name = profileName;
_dialog = findDisplay 8111;
_pnbox = _dialog displayCtrl 1351;
_puidbox = _dialog displayCtrl 1350;
_hinweis1 = _dialog displayCtrl 1354;
_hinweis2 = _dialog displayCtrl 1355;
_auswahl = this select 0;
_id = _id + 1

if(!dialog) then {
createDialog "bug_tracker";}; 
waitUntil {!isNull (_dialog)};

switch(_auswahl) do {
	case 0: {
		hint parseText format["<t underline='true'>Missbrauch</t> führt zum Ban!"];
		_pnbox ctrlSetStructuredText parseText format["%1",_name];
		_puidbox ctrlSetStructuredText parseText format["%1",_uid];
		_hinweis1 ctrlSetStructuredText parseText format["<t align='center'><t color='#ff0000'>*</t> Mit diesem Symbol gekenntzeichnete Felder</t>"];
		_hinweis2 ctrlSetStructuredText parseText format["<t align='center'><t underline='true'>müssen</t> ausgefüllt werden!</t>"];
	};
	case 1: {
		if(((ctrlText 1352) != "") && ((ctrlText 1353) != "")) then {
			if(((ctrlText 1352) != "Name des Bugs") && ((ctrlText 1353) != "Beschreiben sie den Bug")) then {
				_query = format["INSERT INTO support_system (id, name, playerid, titel, message) VALUES ('%1', '%2', '%3', '%4', '%5')",_id,_name,_uid,ctrlText 1352, ctrlText 1353];
				diag_log format["Query: %1",_query];
				waitUntil{!DB_Async_Active};
				[_query,1] call DB_fnc_asyncCall;
				};

				["Vielen Dank für deine Meldung, dass Team wird sich schnellsmöglich bei dir melden", true, "fast"] spawn ESG_fnc_notify;
				closeDialog 0;
			} else {hint "Du musst jedes Feld ausfüllen!"};
		} else {hint "Du musst jedes Feld ausfüllen!"};
		if (life_adminlevel >= 1) then {
			["INFO: Eine neue Bugmeldung wurde eingesendet, in 10 Sekunden wird eine kleine Infomeldung eingeblendet", true, "fast"] spawn ESG_fnc_notify;
			sleep 10;
			
			hint format["Bugmeldung [TITEL: %1] [Beschreibung: %2] [Von: %3]", _ctrlText 1352, ctrlText 1353, _uid];
			sleep 3;
			hint format["Weitere Bugmeldungen kannst du im Bugtracker nachlesen!"];
		}
	};
};

