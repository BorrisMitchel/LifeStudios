    A3L_PickupBall = {
	       _amount = count (attachedObjects player);
		   if (_amount > 0) then {
		   ["You cannot pick up more than 1 item!",10,"red"] call A3L_Fnc_Msg;
		   } else {
            private ["_ball","_id1","_id2"];
            _ball = _this select 0;
            _ball attachto [player, [0.035,-.11,-0.1], "RightHandMiddle1"];

            _id1 = player addAction ["Drop ball", {detach (_this select 3)},_ball];
            _id2 = player addAction ["Throw ball", {[_this select 3] call A3L_ThrowBall},_ball];
     
            [_ball,_id1,_id2] call A3L_Attached;
			};
    };
     
    A3L_Attached = {
     
            private["_ball","_id","_id2"];
     
            _ball = _this select 0;
            _id = _this select 1;
            _id2 = _this select 2;
           
            _typeof = typeof _ball;
           
            [_ball,_id,_id2,_typeof] spawn {
                   
                    private ["_veh","_ballDeleted","_typeof"];
                   
                    _veh = _this select 0;
                    _id = _this select 1;
                    _id2 = _this select 2;
                    _typeof = _this select 3;
                    _ballDeleted = false;
                   
                    while {(_veh IN (attachedObjects player)) OR (_ballDeleted)} do
                    {
                            if ((!(vehicle player == player)) && (!(_ballDeleted))) then
                            {
                                    player removeAction _id;
                                    player removeAction _id2;
                                    detach _veh;
                                    deleteVehicle _veh;
                                    _ballDeleted = true;
                            };
                                                                                   
                            if ((_ballDeleted) && (vehicle player == player)) then
                            {
                                    _veh = _typeof createvehicle (getpos player);
                                   
                                    _veh setVariable ["pickup",false,true];
                                   
                                    _veh attachto [player, [0.035,-.11,-0.1], "RightHandMiddle1"];
                                   
                                    _veh setdir (getdir player + 180);
                                    _veh setpos (getpos _veh);
                                   
                                    _id = player addAction ["Drop ball", {detach (_this select 3)},_veh];
                                    _id2 = player addAction ["Throw ball", {[_this select 3] call A3L_ThrowBall},_veh];
                                    _ballDeleted = false;
                            };
                                                                                   
                            if((player getVariable["restrained",false]) && (!(_ballDeleted))) exitWith {detach _veh;};
                            if (!(alive player)) exitwith {detach _veh;};
                            sleep 0.1;
                    };
                   
                    detach _veh;
                    _veh setVariable ["pickup",true,true];
                    player removeAction _id;
                    player removeAction _id2;
                    };     
     
    };

A3L_ThrowBall = {
_ball = _this select 0;

_ball disableCollisionWith player;

detach _ball;

_vel = velocity player;
_dir = direction player;
_speed = 50;

_ball setVelocity [
(_vel select 0) + (sin _dir * _speed), 
(_vel select 1) + (cos _dir * _speed), 
(_vel select 2) - 5
];


};

