     animalArray =
    [
            "Goat_random_F",
            "Sheep_random_F",
                        "Cock_random_F",
            "Hen_random_F",
                        "Rabbit_F"
    ];
     
    animalMeat =
    [
            ["Sheep_Random_F", "item_sheep"],
            ["Goat_Random_F", "item_goat"],
            ["Rabbit_F", "item_rabbit"],
            ["Cock_random_F", "item_chicken"],
            ["Hen_Random_F", "item_chicken"]
    ]; 
 
        svr_starthunting = {
                _numberOfAnimals = 50;
                _randomCount = count animalArray;
                _index = 0;
                _rand = 0;
                while {_index < _numberOfAnimals} do
                {
                        _antirndom = floor (random 30);
                        if (_antirndom < 3) then {
                        _rand = round (random 1);
                        } else {
                        _rand = (round (random 2)) + 2;
                        };
                        _class = animalArray select _rand;
                        thefuckingclass = _class;
                        _source = (getPos huntingCenter);
                        _dir = random 500;
                        _dist = random 500;
                        _pos = [((_source select 0) + (cos _dir) * _dist), ((_source select 1) + (sin _dir) * _dist), 0];
                        _animal = createAgent [_class,_pos,[],0,"CAN_COLLIDE"];
                        _animal setVariable ["killed",false,true];
                        _animal addEventHandler ["killed", {_this call svr_huntingKill}];
                        _index = _index + 1;
                        [_animal] spawn svr_aliverespawn;
                        sleep (random 5);
                };
        };
   
     
    svr_huntingKill =
    {
            _animal = _this select 0;
            _player = _this select 1;
                        swagger = _this select 1;
            _animal setVariable ["killed",true,true];
            _cargo = createVehicle ["groundWeaponHolder", (getPos _animal), [], 0, "CAN_COLLIDE"];
            _cargo addItemCargoGlobal _meatClass;
            [_animal] spawn svr_huntingRespawn;
 
    };                    
     
                svr_huntingRespawn =
                {
                                _animal = _this select 0;
                                sleep 100;
                                if (!isNull _animal) then {deleteVehicle _animal;};
                                []call svr_respawnAnimal;
                };
     
    svr_respawnAnimal =
    {
                        _randomCount = count animalArray;
            _rand = floor (random _randomCount);
            _class = animalArray select _rand;
            _source = (getPos huntingCenter);
            _dir = random 500;
            _dist = random 500;
            _pos = [((_source select 0) + (cos _dir) * _dist), ((_source select 1) + (sin _dir) * _dist), 0];
            _animal = createAgent [_class,_pos,[],0,"CAN_COLLIDE"];
                        _animal setVariable ["killed",false,true];
            _animal addEventHandler ["killed", {_this call svr_huntingKill}];    
                        [_animal] spawn svr_aliverespawn;
    };
        svr_aliverespawn =
        {
                        _animal = _this select 0;
                        _extratimer = random 1000;
                        _respawntimer = 1200 + _extratimer;
            sleep _respawntimer;
                        if (isNull _animal) exitwith {
                        };
                        Isdead = _animal getvariable "killed";
                        if (Isdead) exitwith {
                        };
                        deleteVehicle _animal;
            []call svr_respawnAnimal;
        };
[] spawn svr_starthunting;