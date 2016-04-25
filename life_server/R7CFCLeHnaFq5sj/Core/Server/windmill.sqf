// Generate functions for windmill functionality
/*
// Master array of all windmill types, first one is classname, second one is displayname
A3L_Windmilltypes = [["A3L_Oldwindmill","Old windmill"]];
// 1 KW/h = A3L_Windmillincome
A3L_Windmillincome = 5;
A3L_Windmills = [windmill1,windmill2,windmill3,windmill4,windmill5,windmill6,windmill7,windmill8];

// This function will set all variables on server start, they should be taken from database
A3L_Windmillvars = 
{
	{
		_id = _forEachIndex + 1;	
		_query = format["SELECT owner,kwh,state,uid,level,generated,minutes FROM windmills WHERE id = '%1'",_id];
		waitUntil {sleep (random 0.3); !DB_Async_Active};
		_query = [_query,2] call DB_fnc_asyncCall;	
		// [owner,state,id,kwh,minutes,income,level,uid,turnedon]
		// DEBUG, NEEDS TO BE REMOVED LATER
		A3L_DebugWindmillDB = _query;
		publicvariable "A3L_DebugWindmillDB";
		// DEBUG, NEEDS TO BE REMOVED LATER
		_array = [(_query select 0),(_query select 2),_id,(_query select 1),(_query select 6),(_query select 5),(_query select 4),(_query select 3),false];
		_x setVariable ["stats",_array,true];
	} foreach A3L_Windmills;
};

// Functions to save windmill information every 5 minutes
A3L_WindMillSave =
{
	{
		_stats = _x getVariable "stats";
		_owner = _stats select 0;
		_state = _stats select 1;
		_id = _stats select 2;
		_kwh = _stats select 3;
		_min = _stats select 4;
		_income = _stats select 5;
		_level = _stats select 6;
		_uid = _stats select 7;
		
		_query = format["UPDATE windmills SET owner='%1',state='%2',kwh='%3',minutes='%5',generated='%6',level='%7',uid='%8' WHERE id='%4'",_owner,_state,_kwh,_id,_min,_income,_level,_uid];
		waitUntil {sleep (random 0.3); !DB_Async_Active};
		[_query,1] call DB_fnc_asyncCall;
		
	} foreach A3L_Windmills;
};

A3L_WindMillLoop = 
{
	private ["_uidarray","_stats","_min","_kwh","_turnedon","_chance","_damaged","_overcast","_random"];
	// Generate array of all playerUIDs on the server
	_uidarray = [];
	{
		_uidarray = _uidarray + [(getPlayerUID _x)];
	} foreach PlayableUnits;

	{
		// First check if player is online
		_stats = _x getVariable "stats";
		_turnedon = _stats select 8;
		if ((_stats select 7) IN _uidarray) then 
		{
			_state = _stats select 1;
			// Check if windmill is turned on
			
			if (_state == "Not damaged") then 
			{
				// Get current generated minutes and KWH
				_min = _stats select 4;
				_kwh = _stats select 3;
				
				// increase min by one
				if (_turnedon) then 
				{
				_min = _min + 1;
				};
				
				// Variable for damaged
				_chance = 1;
				_damaged = false;
				
				// increase KWH
				_overcast = overcast;
				
				if ((_overcast <= 0.2) && (_overcast >= 0) && (_turnedon)) then 
				{
					_kwh = _kwh + 4 + (floor(random 2));
					_chance = 1;
				};
				
				if((_overcast < 0.4) && (_overcast > 0.2) && (_turnedon)) then 
				{
					_kwh = _kwh + 6 + (floor(random 3));
					_chance = 2;
				};
				
				if((_overcast < 0.8) && (_overcast >= 0.4) && (_turnedon)) then 
				{
					_kwh = _kwh + 8 + (floor(random 3));
					_chance = 4;
				};				
				
				if((_overcast < 1.1) && (_overcast >= 0.8) && (_turnedon)) then 
				{
					_kwh = _kwh + 8 + (floor(random 3));
					_chance = 6;
				};				

				// Random number for damage chance
				_random = floor(random 100);
				if (_random < _chance) then
				{
					_damaged = true;
				};
				
				// Check if windmill got damaged and damage it
				if (_damaged) then
				{
					_stats set [1,"Slightly damaged"];
				};		
				
				// set min to stats
				_stats set [4,_min];
				_stats set [3,_kwh];
				
				// publish variable to clients
				_x setVariable ["stats",_stats,true];				
			};
			
			if (_state == "Slightly damaged") then 
			{
				// Get current generated minutes and KWH
				_min = _stats select 4;
				_kwh = _stats select 3;
				
				// increase min by one
				if (_turnedon) then 
				{
				_min = _min + 1;
				};
				
				// Variable for damaged
				_chance = 1;
				_damaged = false;
				
				// increase KWH
				_x = wind select 0;
				_y = wind select 1;
				_overcast = 0;
				
				if ((_overcast < 0.2) && (_overcast > 0) && (_turnedon)) then 
				{
					_kwh = _kwh + 2 + (floor(random 2));
					_chance = 1;
				};
				
				if((_overcast < 0.4) && (_overcast > 0.2) && (_turnedon)) then 
				{
					_kwh = _kwh + 3 + (floor(random 3));
					_chance = 2;
				};
				
				if((_overcast < 0.8) && (_overcast > 0.4) && (_turnedon)) then 
				{
					_kwh = _kwh + 4 + (floor(random 3));
					_chance = 4;
				};				
				
				if((_overcast < 1.1) && (_overcast > 0.8) && (_turnedon)) then 
				{
					_kwh = _kwh + 5 + (floor(random 3));
					_chance = 6;
				};				

				// Random number for damage chance
				_random = floor(random 100);
				if (_random < _chance) then
				{
					_damaged = true;
				};
				
				// Check if windmill got damaged and damage it
				if (_damaged) then
				{
					_stats set [1,"Heavily damaged"];
				};		
				
				// set min to stats
				_stats set [4,_min];
				_stats set [3,_kwh];
				
				// publish variable to clients
				_x setVariable ["stats",_stats,true];				
			};		
			
			if (_state == "Heavily damaged") then 
			{
				// Get current generated minutes and KWH
				_min = _stats select 4;
				_kwh = _stats select 3;
				
				// increase min by one
				if (_turnedon) then
				{
				_min = _min + 1;
				};
				
				// increase KWH
				_x = wind select 0;
				_y = wind select 1;
				_overcast = 0;
				
				if ((_overcast < 0.2) && (_overcast > 0) && (_turnedon)) then 
				{
					_kwh = _kwh + 1 + (floor(random 2));
				};
				
				if((_overcast < 0.4) && (_overcast > 0.2) && (_turnedon)) then 
				{
					_kwh = _kwh + 2 + (floor(random 2));
				};
				
				if((_overcast < 0.8) && (_overcast > 0.4) && (_turnedon)) then 
				{
					_kwh = _kwh + 2 + (floor(random 2));
				};				
				
				if((_overcast < 1.1) && (_overcast > 0.8) && (_turnedon)) then 
				{
					_kwh = _kwh + 2 + (floor(random 3));
				};				
				
				// set min to stats
				_stats set [4,_min];
				_stats set [3,_kwh];
				
				// publish variable to clients
				_x setVariable ["stats",_stats,true];				
			};					
		}
	} foreach A3L_Windmills
};

// START INSERTING WINDMILL VALUES ON SERVER START AND START LOOP
[] spawn {
	[] spawn A3L_windmillvars;
	sleep 1;
	["itemAdd", ["mill60", { [] spawn A3L_WindMillLoop; }, 60]] call BIS_fnc_loop;
	sleep 1;
	["itemAdd", ["mill300", { [] spawn A3L_WindMillSave; }, 300]] call BIS_fnc_loop;
};

// Server handle for redeeming, should set kwh to 0 incase of server crash and possible abuse
"A3L_RequestRedeem" addPublicVariableEventHandler {
	private ["_var","_player","_windmill","_id"];
	_var = _this select 1;
	_player = _var select 0;
	_windmill = _var select 1;

	// Retrieve the getVariable
	_stats = _windmill getVariable "stats";
	
	// get windmill ID
	_id = _windmill select 2;
	
	// Set KWH to 0 in DB once the player has redeemed his cash
	[_id] spawn {
		_id = _this select 0;		
		_query = format["UPDATE windmills SET kwh='%1',minutes='%3' WHERE id = '%2'",0,_id,0];
		waitUntil {sleep (random 0.3); !DB_Async_Active};
		[_query,1] call DB_fnc_asyncCall;	
	};
};

// This will change the owner of a windmill in the database once the player has accepted a request/bought a windmill
"A3L_ChangeOwner" addPublicVariableEventHandler {
	private ["_var","_player","_windmill","_id"];
	_var = _this select 1;
	_player = _var select 0;
	_id = _var select 1;
	
	// Change owner to the new owner
	[_player,_id] spawn {
		_player = name (_this select 0);
		_id = _this select 1;
		_uid = getPlayerUID (_this select 0);
		
		_query = format["UPDATE windmills SET owner='%1',uid='%3' WHERE id = '%2'",_player,_id, _uid];
		waitUntil {sleep (random 0.3); !DB_Async_Active};
		[_query,1] call DB_fnc_asyncCall;	
	};	
};

// End of server side shit
*/