waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log - 0.8",
				"
					The official change log can be found on the Life Studios Website of course!
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Custom Change Log",
				"
					This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				These are considered exploits, and you will not be kicked, but banned.<br/><br/>

				1. Getting out of jail via any method other than paying bail or escaping via jailbreak.<br/>
				2. Killing yourself to get out of roleplay. Getting out of being tazed, restrained, arrested, jail, etc. If the log shows you got arrested, then you died, you will be banned. Do not pay bail and kill yourself for an easy ride home. Walk you lazy turd.<br/>
				3. Duping items and/or money. If someone sends you an unobtainable amount of money right at the start of the game, report to an admin IMMEDIATELY and transfer said money to an admin. Do this ASAP or an admin could ban you if they see that much on you without question.<br/>
				4. Using clearly hacked items. If a hacker comes in and spawns unobtainable items, you could be banned for using said items. Report the items to the admins immediately and stay away from them.<br/>
				5. Abusing bugs or game mechanics for gain. Is there a replicating gun somewhere? Report it and leave it alone. If an admin catches you abusing the glitch, you will be banned.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["greenzones",
		[
			"Green Zones",
				"
					If any hostile acts are committed within 50m of these areas it is punishable by a server ban.<br/><br/>
					
					Any shop<br/>
					Any Police HQs<br/>
					Any ATM<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bannable Offenses", 
				"
				Consider this your one and only warning.<br/><br/>
				
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (See 'Exploits')<br/>
				4. Being kicked 3 or more times.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Aviation", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Purposefully ramming a helicopter into anything. Other helicopters, vehicles, buildings.<br/>
				2. Flying below 200m over any city. This is against server rules.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Purposefully running people over (VRDM). Only permitted if your life is in immediate danger.<br/>
				2. Purposefully throwing yourself in front of vehicles in order to die/get hurt.<br/>
				3. Ramming into other vehicles in order to cause an explosion.<br/>
				4. Constantly trying to enter vehicles that do not belong to you in order to grief the vehicle owner, and not trying to RP.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication Rules", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Task Force Radio must be used to communicate.<br/>
				2. Music must only be played on whisper or normal inside a vehicle.<br/>
				3. Spamming any chat channel will result in your removal.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>
				
				1. Killing anyone without a roleplay cause.<br/>
				2. Declaring a rebellion is not a cause to kill anyone, even cops.<br/>
				3. Cops and civilians/rebels can only commence in a shootout if there are reasons relating to a crime.<br/>
				4. If you are killed in the crossfire of a fight, it is not RDM.<br/>
				5. Killing someone in an attempt to protect yourself or others is not RDMing.<br/>
				6. Shooting a player without giving reasonable time to follow demands is considered RDM.<br/><br/>
				
				These are all judged by admins on a case by case basis.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"New Life Rule", 
				"
				The New Life Rule applies to police and civilians.<br/><br/>
				
				Items on this list may result in your removal from the server and/or ban, based on the admins discretion.<br/><br/>

				1. If you are killed you must wait 15 minutes before returning to the scene of your death.<br/>
				2. If you die during roleplay your past crimes are forgotten, but you also cannot seek revenge.<br/>
				3. If you are RDM'd, it is not a new life.<br/>
				4. If you manually respawn, it is not a new life.<br/>
				5. If you purposefully kill yourself to avoid roleplay, it is not a new life.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Aircraft",
				"
				1. No helicopter can land within major city limits. (Exceptions being what is listed below.)<br/>
				Lakeside: Airfield, Hospital Helipad or Police Helipad.<br/>
				Los Diablos: Airfield, Hospital Helipad or Police Helipad.<br/>
				Small towns: An appropriate location may be chosen. This is to be judged by officers on a case by case basis.<br/><br/>
				
				2. Helicopters may not land on roads.<br/>
				3. Civilian Helicopters cannot fly below 200m over the city.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Illegal Areas", 
				"
				1. Gang areas are considered illegal.<br/>
				2. Do not enter an illegal area unless it is part of a raid.<br/>
				3. If you chase someone into an illegal area, call for backup.<br/>
				4. Under no circumstances is an officer allowed to camp any illegal area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Vehicles", 
				"
				1. Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/>
				2. Vehicles that look abandoned, broken, with no driver, can be towed.<br/>
				3. Boats should be parked reasonably on shore.<br/>
				4. Any vehicle that hasn't moved in a significant amount of time may be towed.<br/>
				5. Towing is an essential job for a tow driver, it helps keep the server clean and less laggy.<br/>
				6. If in doubt, always search the vehicle and message the owner(s) before impounding.<br/>
				7. Police speedboats or Hunter HMGs may be used to assist in apprehending criminals. The weapon should be used to disable vehicles, not to blow them up.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Speed Limits", 
				"
				The following speeds are to be enforced by the Lakeside Valley Police Department for the absolute safety of the citizens of Lakeside and all travelling beyond the city.<br/><br/>
				
				Inside major cities:<br/>
				Small roads: 45km/h<br/>
				Main roads: 55km/h<br/>
				Outside major cities:<br/>
				Small roads: 85km/h<br/>
				Main roads: 110km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Teamspeak Rule",
				"
				All players must be on Teamspeak 3 in the Task Force Radio channel. Failure to be on Teamspeak will make it hard to play Arma 3 Life.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Illegal Items",
				"
				The following items are illegal to posses:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/>
				6. Zipties<br/>
				7. Blindfolds<br/>
				8. Spike Strips<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Legal Weapons", 
				"
				Legal Weapons for Civilians to carry with a firearms license:<br/>
				1. Kimber Night Warrior<br/>
				2. M1911<br/>
				3. Beretta M9<br/>
				4. Glock 17<br/>
				5. Taurus Tracker<br/>
				5. Taurus Tracker Gold<br/>
				6. SDAR<br/>
				7. Hatchet<br/>
				8. Pickaxe<br/><br/>

				Any other weapons are illegal.<br/><br/>

				1. Civilians are to be charged for having a weapon out within the town limits.<br/>
				2. Civilians may have a gun out when they are not in the town. However they should submit to a firearms license search if confronted by an officer and should have the gun lowered (Press Ctrl Twice).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["emsrules",
		[
			"Neutrality",
				"
				1. EMS must revive people on an as seen basis.<br/>
				2. EMS must wait until the scene is Code 4 before reviving anyone.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["emsrules",
		[
			"Medical Custody",
				"
				1. Once revived, you are in EMS custody until the medic clears you.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["emsrules",
		[
			"Interrupting EMS Duties",
				"
				1. No-one is permitted to stop an EMS from doing their duties.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Negotiation",
				"
				Crisis Negotiation must be handled by a negotiation trained SWAT member. If one is not available, the person with the next highest rank must handle the situation.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"The Bank",
				"
				1. All officers should immediately head to the Bank to assist. Petty crimes can be dropped during a bank robbery.<br/>
				2. Lethal force on bank robbers may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
				3. The police should evacuate the civilians from the area during a bank robbery.<br/>
				4. Any civilian who actively makes an attempt to block the police from entering the area may be treated as an accomplice.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"The Prison",
				"
				1. All officers should immediately head to the Prison to assist. Petty crimes can be dropped during a Jail break.<br/>
				2. Lethal force may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
				3. The police should evacuate the civilians from the area during a Jail break.<br/>
				4. Any civilian who actively makes an attempt to block the police from entering the area may be treated as an accomplice.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				1. Police may patrol the island's roads and towns searching for abandoned vehicles and criminal activity.<br/>
				2. Patrols can be done on foot inside of a town, or in a vehicle when outside.<br/>
				3. Patrols include illegal areas.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Cops are encouraged to setup checkpoints in strategic areas to help combat illegal activity and promote safety on the road.<br/><br/>
				
				1. A checkpoint must consist of 2 or more Highway Patrol officers, utilizing 2 or more vehicles.<br/>
				2. Only two Illegal items can be searched for at a Checkpoint.<br/>
				3. Checkpoints must be set up in accordance with Checkpoint Standard Operating Procedures<br/>
				4. Checkpoints do not have to be marked on the map.<br/><br/>


				Proper Checkpoint Procedure:<br/>
				1. Have the driver stop the vehicle at a safe distance and turn off the engine.<br/>
				2. Announce yourself and identify the items in question with regards to the checkpoint.<br/>
				3. Ask the driver and any passengers if they have any weapons.<br/>
				4. Ask them where they are headed to and from.<br/>
				5. Ask the driver and any passengers to exit the vehicle. If they have weapons, do not immediately restrain them when they get out, tell them to lower their weapons and given them a reasonable amount of time to do so.<br/>
				6. Conduct a search of the vehicles.<br/>
				7. After the search is done, you may allow them to re-enter their vehicle and drive away.<br/>
				8. In case anything illegal is found, all illegal items must be confiscated.<br/>
				9. The person may only be ticketed or arrested for items involved in original search.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"City Protocol", 
				"
				1. Officers may patrol major cities - Lakeside, Los Diablos, Morrison, San Cristobal, Knoxville and New Haven.<br/>
				2. Officers may stop by the car shop to make sure there are no cars that need to be impounded.<br/>
				3. Officers may not stand around or loiter in the centre of town.<br/>
				4. The Police HQ buildings are illegal for civilians to enter without authorization, however it is NOT illegal for civilians to be nearby unless they are causing a nuisance.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Arresting and Ticketing",
				"
				Arresting should be done to criminals who are considered a danger to themselves or others.<br/><br/>

				1. You may not arrest someone if you have given them a ticket and they paid it.<br/>
				2. You must tell the suspect why they are being arrested before you arrest them.<br/><br/>


				Ticketing a civilian is considered a warning for the civilian. If they break a law, but do not pose a threat to anyone, you may ticket a civilian.<br/><br/>

				1. Tickets must be in accordance with the Criminal Code.<br/>
				2. Ticket prices should be based off of the crimes committed.<br/>
				3. Refusal to pay a legit ticket is grounds for arrest.<br/><br/>
								
				The list is available in the Criminal Code of Lakeside.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
				The highest ranking officer on duty is in charge of the police force outside of Command currently on Teamspeak 3. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to Command in case any action need be taken.<br/><br/>

				Police Chain of Command:<br/>
				1. Chief<br/>
				2. Assistant Chief<br/>
				3. Deputy Chief<br/>
				4. Captain<br/>
				5. Lieutenant<br/>
				6. Sergeant<br/>
				7. Corporal<br/>
				8. Officer<br/>
				9. Cadet<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
				At this time the Taser (X26 Taser) is the only form of Non-Lethal Force.<br/><br/>

				1. Taser should be used to incapacitate non complying civilians in order to restrain them.<br/>
				2. Only discharge your Taser after verbal warning has been issued.<br/>
				3. Only use your Taser in compliance with the laws and the rules, do NOT enforce your will on others.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"
				1. Use of Lethal force is only permitted for the protection of your life, another officers life, or a civilians life, if and only if non-lethal force would not be effective.<br/>
				2. Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule will be suspended from the LSVPD.<br/>
				3. Failure to follow proper weapons loudout, discipline, and procedures will get you removed from the server and suspended from the LSVPD.<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Player Controls",
				"
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cycle Cop Siren (if cop)<br/>
				Left Mouse: Play Current Siren<br/>
				T: Vehicle Trunk<br/>
				Left Shift + R: Restrain (Cop Only)<br/>
				Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (as a cop).<br/>
				Ctrl + Y: Mine with Pickaxe (Purchasable from Market)<br/>
				"
		]
	];