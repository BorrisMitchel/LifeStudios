fnc_experienceinit = {
a3l_explist = [0,500,1414,2598,4000,5590,7348,9260,11314,13500,
15811,18241,20785,23436,26192,29047,32000,35046,38184,41410,
44721,48117,51595,55152,58788,62500,66287,70148,74081,78085,
82158,86300,90510,94785,99126,103531,108000,112531,117124,121777,
126491,131264,136096,140985,145931,150935,155994,161108,166277,171500,
176777,182106,187489,192923,198409,203945,209533,215170,220857,226594,
232379,238213,244094,250024,256000,262023,268093,274209,280371,286579,
292831,299128,305470,311856,318286,324760,331276,337836,344439,351084,
357771,364500,371271,378083,384936,391831,398766,405741,412757,419812,
426907,434042,441217,448430,455682,462973,470302,477670,485075];
};



fnc_addexp = {
_addexp = _this select 0;
_skill = _this select 1;
_level = 99;
_needexp = 0;
_playerexp = 0;
_skills_arr = [["Mining",exp_mining],["Farming",exp_farming]];
{
if (_x select 0 == _skill) then {
_playerexp = _x select 1;
{
if ((_foreachindex + 1) < 99) then {
_prevexp = _x;
_nextexp = (a3l_explist select (_foreachindex + 1));
if ((_playerexp >= _prevexp) && (_playerexp < _nextexp)) then {
_needexp = _nextexp - _playerexp;
_level = (_foreachindex + 1);
};
};
} foreach a3l_explist;
};
} foreach _skills_arr;

if (((_needexp < _addexp) OR _needexp == _addexp) && (_level < 99)) then {
[_level,_skill] spawn fnc_lvl_up;
};
switch (_skill) do {
    case "mining": { exp_mining = exp_mining + _addexp; };
	case "farming": { exp_farming = exp_farming + _addexp; };
    default { hint format ["Skill %1 not found",_skill]; };
};

};

fnc_lvl_up = {
_level = _this select 0;
_skill = _this select 1;
("A3LLVLSHOW" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
("A3LLVLSHOW" call BIS_fnc_rscLayer) cutRsc ["a3l_lvlup_hud","PLAIN"];
_skillname = parseText format ["<t font='EtelkaNarrowMediumPro' size='1.5' color='#00BF16' align='center'>%1</t>",_skill];
_leveltext = parseText format ["<t font='EtelkaNarrowMediumPro' size='1' color='#FFFFFF' align='center'>You reached level: %1</t>", (_level + 1)];
((uiNamespace getVariable "a3llvlhud") displayCtrl 1001) ctrlSetStructuredText _skillname;
((uiNamespace getVariable "a3llvlhud") displayCtrl 1000) ctrlSetStructuredText _leveltext;
playsound "LevelUp";
sleep 7;
("A3LLVLSHOW" call BIS_fnc_rscLayer) cutText ["","PLAIN"];
};

fnc_openskills = { 
_display = findDisplay 7832;
_listbox = _display displayCtrl 61500;
_cellphonenumber = _display displayCtrl 1002;


_skills_arr = [["Mining",exp_mining,"icons\mining.paa"],["Farming",exp_farming,"icons\farming.paa"]];
_skillcalc = [];

{
_skill = _x select 0;
_exp = _x select 1;
_icon = _x select 2;

{
if ((_foreachindex + 1) < 99) then {
_prevexp = _x;
_nextexp = (a3l_explist select (_foreachindex + 1));
_level = (_foreachindex + 1);
if ((_exp >= _prevexp) && (_exp < _nextexp)) then {
_precent = ((_exp-_prevexp)/(_nextexp-_prevexp));
_needexp = _nextexp - _exp;
_listboxtext = format ["%1 (%2)",_skill,_level];
_listbox lbAdd _listboxtext;
_skillcalc = _skillcalc + [[_skill,_exp,_level,_prevexp,_nextexp,_needexp,_precent,_icon]];
};
} else {
if (_exp < 485075) exitwith {};
_listboxtext = format ["%1 (%2)",_skill,99];
_listbox lbAdd _listboxtext;
_skillcalc = _skillcalc + [[_skill,_exp,99,_x,_x,0,100]];
};

} foreach a3l_explist;
} foreach _skills_arr;
_listbox lbSetCurSel 0;
uiNamespace setVariable ["skillinfo", _skillcalc];
};




fnc_skillsupdate = {
_display = findDisplay 7832;
_listbox = _display displayCtrl 61500;
_skillname = _display displayCtrl 61005;

_leveltext = _display displayCtrl 61000;
_currentexpnum = _display displayCtrl 61003;
_remainingnum = _display displayCtrl 61004;
_pictureupdate = _display displayCtrl 61201;
_sellistbox = lbCurSel _listbox; 
_statsarr = (uiNameSpace getvariable "skillinfo") select _sellistbox;

_skillname ctrlSetText format ["%1",(_statsarr select 0)];
_pictureupdate ctrlSetText (_statsarr select 7);
_leveltext ctrlSetText format ["%1 level: %2",(_statsarr select 0),(_statsarr select 2)];
_currentexpnum ctrlSetText format ["%1",(_statsarr select 1)];
_remainingnum ctrlSetText format ["%1",(_statsarr select 5)];
((uiNamespace getVariable "cellphone") displayCtrl 51251) progressSetPosition (_statsarr select 6);

};

[] spawn fnc_experienceinit;
//[200,"fishing"] spawn fnc_addexp;





















