/*
mobilesettings = [1*,["ringtone name","ringtone location"],["sms name","sms location"],"background location"]
* = 0== Geluid/1==Trillen/2==Stil
mobilesettings = [0,["Pirates","Pirates_ringtone"],["Default","\location\unknown"],"Triangles"]
mobilesettings = [0,["Pirates","Pirates_ringtone"],["Default","\location\unknown"],["Triangles","\A3L_client2\cellphone\backgrounds\background02.paa"]];

*/

fnc_opensettingsmnu = {
_ringtonearr = [
["Default","Super_ringtone"],
["Zedge","Zedge_ringtone"],
["Police","Police_ringtone"],
["Dubstep","Dubstep_ringtone"],
["Rocky","Rocky_ringtone"],
["Godfather","Godfather_ringtone"],
["Lambada","Lambada_ringtone"],
["Pirates","Pirates_ringtone"],
["Children","children_ringtone"],
["Riddle","riddle_ringtone"],
["Americano","americano_ringtone"],
["Samba","Samba_ringtone"],
["Sohigh","sohigh_ringtone"],
["hiphop","hiphop_ringtone"],
["Rain","Rain_ringtone"]
];

_smstonearr = [
["Default","default_smstone"],
["Mario","mario_smstone"],
["South Park","southpark_smstone"],
["Whistle","whistle_smstone"],
["Woop Woop","copintro_smstone"],
["Codec","codec_smstone"],
["Windows 7","windows7_smstone"]
];

_display = findDisplay 7798;
_nameofperson = _display displayCtrl 1001;
_cellphonenumber = _display displayCtrl 1002;
_prepaidamount = _display displayCtrl 1003;
_soundmodelb = _display displayCtrl 2102;
_ringtonelb = _display displayCtrl 2100;
_smslb = _display displayCtrl 2101;
_backgroundlb = _display displayCtrl 2103;
_background = uiNamespace getvariable "background";
((uiNamespace getVariable "cellphone") displayCtrl 5521) ctrlSetText _background;

_nameofperson ctrlSetText format ["Account name: %1",(player getvariable "realname")];
_cellphonenumber ctrlSetText format ["Cellphone Number: %1",(player getvariable "cellnumber")];
_prepaidamount ctrlSetText  format ["Prepaid Amount: TRIAL PERIOD"];
_soundmodelb lbAdd "Sound";
_soundmodelb lbAdd "Vibrate";
_soundmodelb lbAdd "Mute";
_soundmodelb lbSetCurSel (mobilesettings select 0);

_selringtone = -1;
_rtlocarr = [];
{
if ((mobilesettings select 1) select 0 == (_x select 0)) then {
_selringtone = _foreachindex;
};
_ringtonelb lbAdd (_x select 0);
_rtlocarr = _rtlocarr + [[_x select 0,_x select 1]];
} foreach _ringtonearr;

if (_selringtone == -1) then {
_ringtonelb lbAdd ((mobilesettings select 1) select 0);
_rtlocarr = _rtlocarr + [[((mobilesettings select 1) select 0),((mobilesettings select 1) select 1)]];
_selringtone = (count _rtlocarr + 1);
};
uiNamespace setVariable ["rtlocarr", _rtlocarr];
_ringtonelb lbSetCurSel _selringtone;


_selsms = -1;
_smslocarr = [];
{
if ((mobilesettings select 2) select 0 == (_x select 0)) then {
_selsms = _foreachindex;
};
_smslb lbAdd (_x select 0);
_smslocarr = _smslocarr + [[_x select 0,_x select 1]];
} foreach _smstonearr;

if (_selsms == -1) then {
_smslb lbAdd ((mobilesettings select 2) select 0);
_smslocarr = _smslocarr + [[((mobilesettings select 2) select 0),((mobilesettings select 2) select 1)]];
_selsms = (count _smslocarr + 1);
};
uiNamespace setVariable ["smslocarr", _smslocarr];
_smslb lbSetCurSel _selsms;


_selbg = -1;
_bglocarr = [];
{
if ((mobilesettings select 3) == (_x select 0)) then {
_selbg = _foreachindex;
};
_backgroundlb lbAdd (_x select 0);
_bglocarr = _bglocarr + [_x select 0];
} foreach backgroundarr;

if (_selbg == -1) then {
_backgroundlb lbAdd (mobilesettings select 3);
_bglocarr = _bglocarr + ["Default"];
_selbg = (count _bglocarr + 1);
};
uiNamespace setVariable ["bglocarr", _bglocarr];
_backgroundlb lbSetCurSel _selbg;


};


fnc_settsrtprev = {
_display = findDisplay 7798;
_ringtonelb = _display displayCtrl 2100;
_ringtonelist = uiNamespace GetVariable "rtlocarr";
_selected = lbCurSel _ringtonelb; 

if (!isNull logicpreview) then { deletevehicle logicpreview };
_center = createCenter sideLogic;
_group = createGroup _center;
_pos = (getpos player);
_logic = "Logic" CreateUnit [position player, _group, "logicpreview = this;"];
logicpreview say [((_ringtonelist select _selected) select 1),5,1]; while {alive logicpreview} do {Logicpreview setPos (getPos player);};
};



fnc_settssmstprev = {
_display = findDisplay 7798;
_smslb = _display displayCtrl 2101;
_smslist = uiNamespace GetVariable "smslocarr";
_selected = lbCurSel _smslb; 

if (!isNull logicpreview) then { deletevehicle logicpreview };
_center = createCenter sideLogic;
_group = createGroup _center;
_pos = (getpos player);
_logic = "Logic" CreateUnit [position player, _group, "logicpreview = this;"];
logicpreview say [((_smslist select _selected) select 1),5,1]; while {alive logicpreview} do {Logicpreview setPos (getPos player);};
};

fnc_settingsbg = {
_display = findDisplay 7798;
_bglb = _display displayCtrl 2103;
_background = _display displayCtrl 5521;
_selected = lbCurSel _bglb; 
_selbackground = backgroundarr select _selected;
_previewbg = _selbackground select 1;
_background ctrlSetText _previewbg;
};


fnc_savesettings = {
_display = findDisplay 7798;
_nameofperson = _display displayCtrl 1001;
_cellphonenumber = _display displayCtrl 1002;
_prepaidamount = _display displayCtrl 1003;
_soundmodelb = _display displayCtrl 2102;
_ringtonelb = _display displayCtrl 2100;
_smslb = _display displayCtrl 2101;
_backgroundlb = _display displayCtrl 2103;
_selring = lbCurSel _ringtonelb; 
_selsoundm = lbCurSel _soundmodelb; 
_selsms = lbCurSel _smslb; 
_selbckg = lbCurSel _backgroundlb; 

_rtlocarr = uiNameSpace getvariable "rtlocarr";
_smslocarr = uiNameSpace getvariable "smslocarr";
_bglocarr = uiNameSpace getvariable "bglocarr";

_selectedrt = _rtlocarr select _selring;
_selectedsms = _smslocarr select _selsms;
_selectedbg = _bglocarr select _selbckg;

mobilesettings = [_selsoundm,_selectedrt,_selectedsms,_selectedbg];
closedialog 0;
};

//contacts_list = [["name","number","notes"]];
fnc_opencontacts = {
_display = findDisplay 7732;
_listbox = _display displayCtrl 1500;
_amountm = _display displayCtrl 1001;
_selection = _this select 0;
lbClear _listbox;

_background = uiNamespace getvariable "background";
((uiNamespace getVariable "cellphone") displayCtrl 5521) ctrlSetText _background;

{
selectedtext = format ["%1 (%2)",_x select 0,_x select 1];
_listbox lbAdd selectedtext;
} foreach contacts_list;

_amount = count contacts_list;
_amounttext = format ["%1/20",_amount];
_amountm ctrlSetText _amounttext;
_listbox lbSetCurSel _selection;
};

fnc_contactsel = {
_display = findDisplay 7732;
_listbox = _display displayCtrl 1500;
_amountm = _display displayCtrl 1001;
_nameedit = _display displayCtrl 1400;
_cellnumedit = _display displayCtrl 1401;
_notesededit = _display displayCtrl 1403;

_cursel = lbCurSel _listbox; 
if (_cursel == -1) exitwith {};

_infoarr = contacts_list select _cursel;
_name = _infoarr select 0;
_cellphone = _infoarr select 1;
_notes = _infoarr select 2;
_nameedit ctrlSetText _name;
_cellnumedit ctrlSetText _cellphone;
_notesededit ctrlSetText _notes;
};

fnc_contactadd = {
_display = findDisplay 7732;
_listbox = _display displayCtrl 1500;
_amountm = _display displayCtrl 1001;
_nameedit = _display displayCtrl 1400;
_cellnumedit = _display displayCtrl 1401;
_notesededit = _display displayCtrl 1403;

_name = ctrlText _nameedit;
_cellphone = ctrlText _cellnumedit;
_notes = ctrlText _notesededit;

if((_name == "") OR (count _name > 20)) exitWith {["You need to fill in a name!",20,"red"] call A3L_Fnc_Msg;};
if((_cellphone == "") OR !(count _cellphone == 6)) exitWith {["You need to fill in a correct number!",20,"red"] call A3L_Fnc_Msg;};
if((count _notes > 100)) exitWith {["You can't have more than 100 characters!",20,"red"] call A3L_Fnc_Msg;};
if((count contacts_list > 19)) exitWith {["You can't have more than 20 contacts!",20,"red"] call A3L_Fnc_Msg;};

contacts_list = contacts_list + [[_name,_cellphone,_notes]];
[(count contacts_list + 1)] call fnc_opencontacts;
};

fnc_contactrem = {
_display = findDisplay 7732;
_listbox = _display displayCtrl 1500;
_amountm = _display displayCtrl 1001;
_nameedit = _display displayCtrl 1400;
_cellnumedit = _display displayCtrl 1401;
_notesededit = _display displayCtrl 1403;

_cursel = lbCurSel _listbox; 
if (_cursel == -1) exitwith {};

_name = ctrlText _nameedit;
_cellphone = ctrlText _cellnumedit;
_notes = ctrlText _notesededit;


contacts_list set [_cursel,"deletethis"];
contacts_list = contacts_list - ["deletethis"];
_msg = format ["You succesfully deleted: %1 (%2)",_name,_cellphone];
if((count _notes > 100)) exitWith {[_msg,20,"red"] call A3L_Fnc_Msg;};

[_cursel] call fnc_opencontacts;
};

fnc_contactupd = {
_display = findDisplay 7732;
_listbox = _display displayCtrl 1500;
_amountm = _display displayCtrl 1001;
_nameedit = _display displayCtrl 1400;
_cellnumedit = _display displayCtrl 1401;
_notesededit = _display displayCtrl 1403;
_cursel = lbCurSel _listbox; 
if (_cursel == -1) exitwith {};

_name = ctrlText _nameedit;
_cellphone = ctrlText _cellnumedit;
_notes = ctrlText _notesededit;

if((_name == "") OR (count _name > 20)) exitWith {["You need to fill in a name!",20,"red"] call A3L_Fnc_Msg;};
if((_cellphone == "") OR !(count _cellphone == 6)) exitWith {["You need to fill in a correct number!",20,"red"] call A3L_Fnc_Msg;};
if((count _notes > 100)) exitWith {["You can't have more than 100 characters!",20,"red"] call A3L_Fnc_Msg;};
if((count contacts_list > 19)) exitWith {["You can't have more than 20 contacts!",20,"red"] call A3L_Fnc_Msg;};

contacts_list set [_cursel,[_name,_cellphone,_notes]];
[_cursel] call fnc_opencontacts;
};

fnc_contactcallsms = {
_display = findDisplay 7732;
_listbox = _display displayCtrl 1500;
_amountm = _display displayCtrl 1001;
_nameedit = _display displayCtrl 1400;
_cellnumedit = _display displayCtrl 1401;
_notesededit = _display displayCtrl 1403;
_cursel = lbCurSel _listbox; 
_mode = _this select 0;
if (_cursel == -1) exitwith {};

_name = ctrlText _nameedit;
_cellphone = ctrlText _cellnumedit;
_notes = ctrlText _notesededit;


if (_mode == 0) then {
["Calling someone has not been implemented yet.",20,"orange"] call A3L_Fnc_Msg;
};
if (_mode == 1) then {
closedialog 0;
createdialog "messagemenu";
[_cellphone] spawn life_fnc_cellphone;

};
};





