_item = [_this,1,"",[""]] call BIS_fnc_Param;
_masterclass = [_this,0,"",[""]] call BIS_fnc_Param;
_return = isClass (configFile >> _masterclass >> _item);
_return;	