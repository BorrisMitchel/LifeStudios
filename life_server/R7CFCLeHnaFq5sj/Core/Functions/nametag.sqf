fnc_setnametag = {
#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
#define __GETC__(var) (call var)


	_color = "#00FF00";
	_gang = "";
	player setvariable ["nametag",["#5B914D","Loading Stats"],true];

	sleep 5;
	waituntil {(!isnil "life_donator")};
	waituntil {(!isnil "cellnumber")};
	waituntil {(!isnull player)};

	_cellnumber = (__GETC__(cellnumber));
	if (__GETC__(life_donator) > 0) then {
	_color = "#cd7f32";
	}; if (__GETC__(life_donator) > 1) then {
	_color = "#CCCCCC";
	}; if (__GETC__(life_donator) > 2) then {
	_color = "#FFD700";
	};
	
	_gang = "";
	
	player setvariable ["cellnumber",_cellnumber,true];
	player setvariable ["nametag",[_color,_gang],true];
};

fnc_nametagedit = {
#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
#define __GETC__(var) (call var)

	_nametag = player getvariable "nametag";
	_name = player getvariable "realname";
	_curgang = _nametag select 1;
	_curcolor = _nametag select 0;
	_display = findDisplay 12298;
	_colorlistbox = _display displayCtrl 2100;
	_ganglistbox = _display displayCtrl 2101;
	_colorarr = [["Green","#00FF00"],["Life blue *TEST*","#00CFB3"]];
	_nametext = _name;
	_background = uiNamespace getvariable "background";
	((uiNamespace getVariable "cellphone") displayCtrl 5521) ctrlSetText _background;
	
	if (goggles player IN ["A3L_Balaclava","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile"]) then {
		_nametext = format["<t color='%1' font='EtelkaNarrowMediumPro'>Masked Person</t>",_curcolor];
		} else {
		_nametext = format["<t color='%2' font='EtelkaNarrowMediumPro'>%1</t>",_nametext,_curcolor];
	};
	
	_menunametxt = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='0.7' align='left'>%1</t>",_nametext];

	((uiNamespace getVariable "cellphone") displayCtrl 1001) ctrlSetStructuredText _menunametxt;

	if (__GETC__(life_donator) > 0) then {
	_colorarr = _colorarr + [["Donator bronze","#cd7f32"]];
	}; if (__GETC__(life_donator) > 1) then {
	_colorarr = _colorarr + [["Donator silver","#CCCCCC"]];
	}; if (__GETC__(life_donator) > 2) then {
	_colorarr = _colorarr + [["Donator gold","#FFD700"]];
	};
	
	if (count (__GETC__(a3l_customcolor)) > 0) then {
	{
	_colorarr = _colorarr + [[_x select 0,_x select 1]];
	} foreach (__GETC__(a3l_customcolor));
	};
	
	_inarr = 0;
	_selected = 0;
	_total = 0;
	{
		_arrcolor = _x select 1;
		_arrnamecol = _x select 0;	
		_index = _colorlistbox lbAdd _arrnamecol;
		if (_curcolor == _arrcolor) then {
			_selected = _forEachIndex;
			_inarr = 1;
		};
		_total = _forEachIndex;
	} foreach _colorarr;
	
	if (_inarr == 0) then {
	_index = _colorlistbox lbAdd "*UNKNOWN*";
	_total = _total + 1;
	_selected = _total;
	_colorarr = _colorarr + [["*UNKNOWN*",_curcolor]];
	};
	_colorlistbox lbSetCurSel _selected;
	

	if (!isNil {(group player) getVariable "gang_name"}) then {
		if (_curgang == "") then {
			_menugangtxt = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='0.7' align='left'>Gang tag hidden</t>",_curgang];
			((uiNamespace getVariable "cellphone") displayCtrl 1002) ctrlSetStructuredText _menugangtxt;	
		} else {
			_menugangtxt = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='0.7' align='left'>%1</t>",_curgang];
			((uiNamespace getVariable "cellphone") displayCtrl 1002) ctrlSetStructuredText _menugangtxt;
		};
		
		_gang = (group player) getVariable "gang_name";
		_gangarr = [_gang,"anonymous","*HIDDEN*"];
		
		_inarr = 0;
		_selected = 0;
		_total = 0;
		{
			_index = _ganglistbox lbAdd _x;
			if ((_x == _curgang) OR ((_x == "*HIDDEN*") && (_curgang == ""))) then {
				_selected = _forEachIndex;
				_inarr = 1;
			};
			_total = _forEachIndex;
		} foreach _gangarr;
		
		if (_inarr == 0) then {
		_index = _ganglistbox lbAdd "*UNKNOWN*";
		_total = _total + 1;
		_selected = _total;
		};
		_ganglistbox lbSetCurSel _selected;
	uiNamespace setVariable ["gangarr",_gangarr];
	} else {
	_menugangtxt = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='0.7' align='left'>You are not in a gang!</t>"];
	((uiNamespace getVariable "cellphone") displayCtrl 1002) ctrlSetStructuredText _menugangtxt;
	_index = _ganglistbox lbAdd "NOT IN A GANG";
	_ganglistbox lbSetCurSel 0;
	uiNamespace setVariable ["gangarr",[]];
	};
	
	
	uiNamespace setVariable ["colorarr",_colorarr];
};


fnc_nametagupdate = {
	if (isNil {spamsecurity}) then {
	spamsecurity = 0;
	};
	if (spamsecurity == 0) then {
	_display = findDisplay 12298;
	_colorlistbox = _display displayCtrl 2100;
	_ganglistbox = _display displayCtrl 2101;
	_colorarr = uiNamespace GetVariable "colorarr";
	_gangarr = uiNamespace GetVariable "gangarr";
	
	_colorsel = lbCurSel _colorlistbox;
	_selcolorarr = _colorarr select _colorsel;
	_selgangarr = "";
	if ((count _gangarr) > 0) then {
	_gangsel = lbCurSel _ganglistbox;
	_selgangarr = _gangarr select _gangsel;
	if (_selgangarr == "*HIDDEN*") then {
	_selgangarr = "";
	};
	} else {
	_selgangarr = "";
	};
	_newcolor = _selcolorarr select 1;
	_newgang = _selgangarr;
	
	player setvariable ["nametag",[_newcolor,_newgang],true];
	lbClear _colorlistbox;
	lbClear _ganglistbox;
	[] call fnc_nametagedit;
	
	
	spamsecurity = 1;
	sleep 2;
	spamsecurity = 0;
	} else {
	["Try again in 2 seconds!",20,"red"] call A3L_Fnc_Msg;
	};
};
fnc_tfrtag = {
	removeAllMissionEventHandlers "draw3d";
	addMissionEventHandler ["Draw3D", {
		_units = nearestObjects[(visiblePosition player),["Man"],30];
		{
		if (!isplayer _x) then {} else {
		_intfr = _x getvariable "taskfr";
		if ((!_intfr)) then {
		_playerPos = getpos _x;
		drawIcon3D ["\A3L_client2\images\connection.paa",
			[1,0,0,1],
			[_playerPos select 0,_playerPos select 1,2.3],
			2, 2,
			360,
			"Not in TFR",
			0,
			0.03,
			"PuristaMedium"
		];
		};
		};
		} foreach _units;
	}];
	[] spawn fnc_tfrtag2;
}; 

fnc_tfrtag2 = {
	sleep 10;
	player setvariable ["taskfr",true,true];
	[] spawn fnc_tfrtag;
};

[] spawn fnc_tfrtag;
[] spawn fnc_setnametag;