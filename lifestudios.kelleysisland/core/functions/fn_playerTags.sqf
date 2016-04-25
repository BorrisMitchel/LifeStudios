#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8
#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
#define __GETC__(var) (call var)



if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F","Land_Suitcase_F"],50];
_units = _units - [player];

	
{
	private["_text"];
	_array = _x getvariable "nametag";
	_color = _array select 0;
	_group = _array select 1;
	
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Suitcase_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < 15}) then {
			_text = switch (true) do {
				case ((typeOf _x == "Land_Suitcase_F") && (!isNil {(_x getVariable "pickup")})): {format["<t color='#00FF00' font='EtelkaNarrowMediumPro'>%1</t>","Bank money"];};
				case (_x in (units grpPlayer) && playerSide == civilian && (!(goggles _x IN ["A3L_Balaclava","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","TRYK_kio_balaclava_ESS","TRYK_balaclava_NV","TRYK_balaclava_BLACK_NV"]))): {format["%3<t color='%2' font='EtelkaNarrowMediumPro'>%1</t>",(_x getVariable ["realname",name _x]),_color];};
				case (goggles _x IN ["A3L_Balaclava","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","TRYK_kio_balaclava_ESS","TRYK_balaclava_NV","TRYK_balaclava_BLACK_NV"]): {format["<t color='%1' font='EtelkaNarrowMediumPro'>Masked Person</t>",_color];};
				case (!isNil {(_x getVariable "rank")}): {format["<t color='%2' font='EtelkaNarrowMediumPro'> %1 </t>",_x getVariable ["realname",name _x],_color]};
				case ((!isNil {_x getVariable "name"} && playerSide == independent)): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> <t font='EtelkaNarrowMediumPro'> %1 </t>",_x getVariable ["name","Unknown Player"]]};
				default {
					if((!isNil {(group _x) getVariable "gang_name"}) && (!(goggles _x IN ["A3L_Balaclava","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","TRYK_kio_balaclava_ESS","TRYK_balaclava_NV","TRYK_balaclava_BLACK_NV"]))) then {
						format["<t color='%3' font='EtelkaNarrowMediumPro'>%1</t><br/>%4<t size='0.8' font='EtelkaNarrowMediumPro' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],_group,_color];
					} 
					else 
					{
						if (goggles _x IN ["A3L_Balaclava","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","TRYK_kio_balaclava_ESS","TRYK_balaclava_NV","TRYK_balaclava_BLACK_NV"]) then 
							{
							format["<t color='%1' font='EtelkaNarrowMediumPro'>Masked Person</t>",_color];
							} else 
							{
							format["<t color='%2' font='EtelkaNarrowMediumPro'>%1</t>",(_x getVariable ["realname",name _x]),_color];
							};
					};
				};
			};
			
			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
			
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;