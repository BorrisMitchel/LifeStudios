miningstone_array = [
["A3L_Normal_Rock_L","A3L_Normal_Rock_S",20,30],
["A3L_Bits_Rock_L_Iron","A3L_Bits_Rock_S_Iron",20,30],
["A3L_Bits_Rock_L_Coal","A3L_Bits_Rock_S_Coal",30,40],
["A3L_Bits_Rock_L_Diamond","A3L_Bits_Rock_S_Diamond",50,60]
];

woodclogs_array = [
["Paper_Mulberry","A3L_Log3",20,30],
["Olive_1","A3L_Log2",20,33],
["Ficus_1","A3L_Log1",30,44]
];

fnc_clienthandlerock = {
_object = _this select 0;
_player = _this select 1;
_classname = _this select 2;
_health = _this select 3;
_type = _this select 4;
_hitexp = 0;
_breakexp = 0;
_hit = 1;
if (_type == "mining") then {
_miningexp = exp_mining;
_exp_mining = [
["A3L_Normal_Rock_L",10,170],
["A3L_Bits_Rock_L_Coal",20,260],
["A3L_Bits_Rock_L_Iron",25,320],
["A3L_Bits_Rock_L_Diamond",30,400]
];
{  if ((_x select 0) == _classname) then {
_hitexp = _x select 1;
_breakexp = _x select 2;
};
} foreach _exp_mining;
if ((_miningexp >= 0) && (_miningexp < 41410)) then { _hit = 1; };
if ((_miningexp >= 41410) && (_miningexp < 171500)) then { _hit = 1 + (round random 1); };
if ((_miningexp >= 171500) && (_miningexp < 226594)) then { _hit = 2 + (round random 1); };
if ((_miningexp >= 226594) && (_miningexp < 318286)) then { _hit = 2 + (round random 1); };
if (_miningexp >= 318286) then { _hit = 3 + (round random 1); };
if (_health <= _hit) then {  [_breakexp,"mining"] spawn fnc_addexp;  } else {  [_hitexp,"mining"] spawn fnc_addexp;  };
};
if (_type == "woodcutting") then {  };
hint parsetext format ["TEMP MINING INFO<br />Health: %1<br/>EXP When hit: %2<br/>EXP When broken: %3<br/>Mining EXP: %5<br/>Dammage: %4",_health,_hitexp,_breakexp,_hit,exp_mining];
[[_object,_player,_classname,_health,_type,_hit],"svr_ContinuehandleRock",false,false] spawn bis_fnc_MP;  
};