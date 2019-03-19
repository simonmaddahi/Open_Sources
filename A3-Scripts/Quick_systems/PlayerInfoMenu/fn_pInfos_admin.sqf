/*
    @Author: Natic
    @Date: 12.01.2019
    @Dislaimer: Nobody is allowed to use/edit this script
*/
private["_cop","_med","_civ","_admin","_don","_adac","_uid","_name","_time","_query","_qresult","_cars","_license","_atm","_info"];

/*
    WARNING: Before you can use this Script, you need the civ and adac level!
*/

_cop = life_coplevel;
_med = life_mediclevel;
_civ = life_civlevel;
_admin = life_adminlevel;
_adac = life_adaclevel;
_don = life_donorlevel;
_uid = getPlayerUID;
_name = name player;
_time = time;
_info = this select 0;
_listbox = _dialog displayCtrl 8181;


if (_admin >= 1) then {
    _query = format["SELECT FROM players (coplevel, adminlevel, donorlevel, mediclevel, civlevel, adaclevel, atm, time, license, cars ) WHERE '%1', '%2', '%3', '%4', '%5', '%6','%7'",_cop,_admin,_don,_med,_civ,_adac,_time,_license,_atm,_cars];
                diag_log format["Query: %1",_query];
                waitUntil{!DB_Async_Active};
                [_query,1] call DB_fnc_asyncCall;

    switch (_info) do {
        case 1: { 
                _listbox lbAdd "%1",_name;
                _listbox lbAdd "%2",_uid;
                _listbox lbAdd "%3",_time;
                _listbox lbAdd "%4",_cop;
				_listbox lbAdd "%5",_med;
				_listbox lbAdd "%6",_civ;
				_listbox lbAdd "%7",_adac;
				_listbox lbAdd "%8",_donor;
                _listbox lbAdd "Adminstatus:%9",_admin;
                _listbox lbAdd "%10",_license;
                _listbox lbAdd "%11",_atm;
                _listbox lbAdd "%12",_cars;
        };
    };
};

