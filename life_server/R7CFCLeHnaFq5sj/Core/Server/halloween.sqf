svr_hlw_loc = {
_arr = [];
_spwnloc = [
[2331.89,9399.02,0],
[6947.63,9334.59,0],
[10149.1,8120.49,0],
[6956.35,7377.71,0],
[4355.51,7730.48,0],
[3095.63,6974.1,0],
[1029.34,6288.49,0],
[1583.21,4155.31,0],
[1533,3863.96,0],
[4348.19,3823.24,0],
[9605.95,5874.06,0],
[9634.01,4509.37,0],
[9419.67,1947.88,0],
[7082.91,1225.61,0],
[3182.92,1088.23,0],
[1503.19,2503.46,0],
[1503.19,2503.46,0],
[1533.5,5639.41,0]
];
 
{
_arrnumber = _forEachIndex;
_Xas = _x select 0;
_Yas = _x select 1;
_Zas = _x select 2;
 
_Xas = _Xas + random 200;
_Yas = _Yas + random 200;
_Zas = _Zas;
[] spawn svr_hlw_delete;
_location = [_Xas,_Yas,_Zas];
_plumpkin = "A3L_Pumpkin" createvehicle _location;
_arr = _arr + [_plumpkin];
} foreach _spwnloc;
[[_arr],"fnc_hlw_pumpkin",true,false,false] call Bis_fnc_MP;
sleep 1000;
[] spawn svr_hlw_loc;
};
 
 
 
svr_hlw_delete = {
sleep 900;
if (isNull _plumpkin) then {} else { deletevehicle _plumpkin };
};

[] spawn svr_hlw_loc;
