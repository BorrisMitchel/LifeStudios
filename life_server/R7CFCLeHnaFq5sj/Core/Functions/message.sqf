tablet_inbox = [[name player,"",date,0,""]];

sms_getinbox = {
sleep 0.1;
_amountofsms = count tablet_inbox;
_display = findDisplay 12193;
_units = _display displayCtrl 8871;
lbClear _units;
_info = "NONE";
{
_arrnumber = _forEachIndex;
_sendplayer = _x select 0;
_message = _x select 1;
_info = _x select 4;

_units lbAdd _info;
} foreach tablet_inbox;
lbSetCurSel [8871, 0];
[_amountofsms] spawn fnc_smsmenuopen;
};

fnc_smsmenuopen = {
sleep 1;
amountofsms = _this select 0;
if(smsmenuisopen == 1) then {
amountofnewsms = count tablet_inbox;
if (amountofsms == amountofnewsms) then {
[amountofnewsms] spawn fnc_smsmenuopen;}
else {
[] spawn sms_getinbox;
};
};
}; 

fnc_smsselected = {
_selected = lbCurSel 8871;
_selectedinfo = tablet_inbox select _selected;
_thetext = _selectedinfo select 1;
_apptext2 = parseText format ["<t font='EtelkaNarrowMediumPro' size='0.6' color='#FFFFFF' align='left'>%1</t>", _thetext];
((uiNamespace getVariable "cellphone") displayCtrl 8875) ctrlSetStructuredText _apptext2;
};



clientsmssys = {
	if(isServer) exitWith {};
	_msg = _this select 0;
	_from = _this select 1;
	_to = _this select 2;
	_date = _this select 3;
	_type = _this select 4;
	_sender = _this select 5;
	_toplayer = _this select 6;
	
	switch (_type) do
	{
		// from player to 911
		case 1 :
		{
			if((side player == west) OR (side player == independent)) then {
			_infotext = format ["911 SMS from: %1 (%2)",_sender getvariable "realname",_from];
			_compiled = [_sender,_msg,_date,_type,_infotext];
			tablet_inbox = [_compiled] + tablet_inbox;
			[_infotext,_msg] spawn fnc_sms_hud; 
			};
		};
		case 2 :
		{
			// from admin to player
			_infotext = format ["(( GLOBAL ADMIN MSG FROM: %1))",name _sender];
			_compiled = [_sender,_msg,_date,_type,_infotext];
			tablet_inbox = [_compiled] + tablet_inbox;
			[_infotext,_msg] spawn fnc_sms_hud; 
		};
		case 3 :
		{
			// from player to admin
			_infotext = format ["ADMINMSG: %1 (%2)",name _sender,_from];
			if((call life_adminlevel) < 1) exitWith {};
			_compiled = [_sender,_msg,_date,_type,_infotext];
			tablet_inbox = [_compiled] + tablet_inbox;
			[_infotext,_msg] spawn fnc_sms_hud; 
		};
		case 4 :
		{
			// player to player
			if (!(_toplayer == player)) exitwith {};
			_name = "";
			{
			_selnumber = _x select 1;
			_selname = _x select 0;
		
			if (_selnumber == _from) then {
				_name = _selname;
			};
			} foreach contacts_list;

			_infotext = format ["SMS From: %1",_from];
			if (!(_name == "")) then {
			_infotext = format ["SMS From: %2 (%1)",_from,_name];
			};	
			_compiled = [_sender,_msg,_date,_type,_infotext];
			tablet_inbox = [_compiled] + tablet_inbox;
			[_infotext,_msg] spawn fnc_sms_hud; 
		};
};
};



fnc_sms_hud = {
_from = _this select 0;
_message = _this select 1;
("A3LSMSSHOW" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
("A3LSMSSHOW" call BIS_fnc_rscLayer) cutRsc ["a3l_sms_hud","PLAIN"];
_bytext = parseText format ["<t font='EtelkaNarrowMediumPro' size='0.6' color='#e0e2ef' align='center'>%1</t>",_from];
_smstext = parseText format ["<t font='EtelkaNarrowMediumPro' size='0.6' color='#FFFFFF' align='left'>%1</t>", _message];
((uiNamespace getVariable "a3lsmshud") displayCtrl 55263) ctrlSetStructuredText _bytext;
((uiNamespace getVariable "a3lsmshud") displayCtrl 52163) ctrlSetStructuredText _smstext;
_selectedbg = mobilesettings select 3;
_pictureloc = "\A3L_client2\cellphone\backgrounds\background01.paa";
{
	if (_selectedbg == _x select 0) then {
	_pictureloc = _x select 1;
	};
} foreach backgroundarr;
((uiNamespace getVariable "a3lsmshud") displayCtrl 1201) ctrlSetText _pictureloc;
_soundmode = mobilesettings select 0;
if (_soundmode == 0) then {
[[1,player,((mobilesettings select 2) select 1)],"fnc_globmobilesnd",true,false] spawn life_fnc_MP;
} else {
if (_soundmode == 1) then {
player say3D ((mobilesettings select 2) select 1);
} else {
};};
sleep 7;
("A3LSMSSHOW" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
};

// mode 1 == sms | mode 2 == call
fnc_globmobilesnd = {
if(isServer) exitWith {};
_mode = _this select 0;
_source = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_sound = _this select 2;
if(isNull _source) exitWith {};
if (_mode == 1) then {
if (player distance _source > 20) exitwith {};
_source say3D _sound;
};
};

fnc_sms_textmsg = {
	_msg = ctrlText 8872;
	_to = ctrlText 8876;
	_number = str (player getvariable "cellnumber");

	if(_msg == "") exitWith {["You must enter a message to send!",20,"red"] call A3L_Fnc_Msg;};
	if(_to == "") exitWith {["You must fill in a cellphone number!",20,"red"] call A3L_Fnc_Msg;};

	if (_to == "911" OR _to == "all" OR _to == "everyone" OR _to == "admin" OR _to == "administrator") then {
		if(_to == "911") then {
			[[_msg,_number,_to,date,1,player],"clientsmssys",true,false] spawn life_fnc_MP;
			["You've send an emergency message to 911!",20,"orange"] call A3L_Fnc_Msg;
			["0"] call life_fnc_cellphone;
		};
		if ((_to == "all" OR _to == "everyone") && ((call life_adminlevel) > 0)) then {
			[[_msg,_number,_to,date,2,player],"clientsmssys",true,false] spawn life_fnc_MP;
			["You've send an SMS to everyone!",20,"orange"] call A3L_Fnc_Msg;
			["0"] call life_fnc_cellphone;
		};
		if(_to == "admin" OR _to == "administrator") then {
			[[_msg,_number,_to,date,3,player],"clientsmssys",true,false] spawn life_fnc_MP;
			["You've send an SMS to the admins that are online.",20,"orange"] call A3L_Fnc_Msg;
			["0"] call life_fnc_cellphone;
		};
	} else {		
		_theplayer = player;
		_found = false;
		{
		_selnumber = str (_x getvariable "cellnumber");
		if (_selnumber == _to) then {
		_theplayer = _x;
		_found = true;
		};
		} foreach playableunits;
		if (_found) then {
		[[_msg,_number,_to,date,4,player,_theplayer],"clientsmssys",true,false] spawn life_fnc_MP;
		} else {
		_msg = format ["Sorry, the Cellphone number: %1 is currently unavailable, please try again later!",_to];
		[[_msg,_number,_to,date,4,player,player],"clientsmssys",true,false] spawn life_fnc_MP;
};};};