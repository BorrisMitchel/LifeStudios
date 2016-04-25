fnc_copantinak = {
if (deathscreenopen == 1) then {
_unit = _this select 0;
_nearest = nearestObjects [_unit, ["man"], 5];
_totaltext = "";
{
	_size = "";
	_color = "";
	if (isPlayer _x) then {
		if (side _x == blufor) then {
			_size = "COP";
			_color = "#1F4B71";
		} else {
			if (side _x == independent) then {
			_size = "EMS";
			_color = "#01AEBF";
		} else {
			_size = "CIV";
			_color = "#FF4444";
		};};
		_name = name _x;
		_distance = _unit distance _x;
		_oldtext = _totaltext;
		_text = format ["<t color='%4'>{%3}%1 (%2)<br/>%5",_name,_distance,_size,_color,_oldtext];
		_totaltext = _text;
	};
} foreach _nearest;
_parsed = parseText format ["<t size='0.75'>%1</t>", _totaltext];
_parsed2 = parseText format ["<t size='0.7'>By using this information INGAME, you risk getting banned for METAGAMING. This is only used to report a player stealing your shit.</t>"];
((uiNamespace getVariable "Life_Death_Screen") displayCtrl 11200) ctrlSetStructuredText _parsed;
((uiNamespace getVariable "Life_Death_Screen") displayCtrl 11901) ctrlSetStructuredText _parsed2;
sleep 1;
[] spawn fnc_copantinak;
};};