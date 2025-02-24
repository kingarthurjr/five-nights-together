//Set Night Guard Defaults
htme_globalSet("facing",0,buffer_u8);
htme_globalSet("doorLeft",0,buffer_bool);
htme_globalSet("doorRight",0,buffer_bool);
htme_globalSet("light",0,buffer_bool);
htme_globalSet("powerOut",0,buffer_bool);
htme_globalSet("buildingPower",100,buffer_u8);
htme_globalSet("buildingTemp",60,buffer_u8);

//Temporary
room_goto(rm_office1);