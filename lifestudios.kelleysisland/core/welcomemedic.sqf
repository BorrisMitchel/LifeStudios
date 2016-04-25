/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/
player setVariable ["copLevel",1,true]; 

_imag  = "<img image='textures\ls.jpg' size='10' align='center'/>"; _text = format["<br/><t color='#C5B6B5' size='1.8' align='center'>Welcome %1 to Life Studios!</t><br/><br/>",ProfileName];  
hint parseText (_imag + _text);

_onScreenTime = 3;

//if(life_firstSpawn) then {

//}; 
