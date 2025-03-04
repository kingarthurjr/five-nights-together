///Set Night Guard Defaults

//Office Status
htme_globalSet("facing",0,buffer_u8);
htme_globalSet("doorLeft",0,buffer_bool);
htme_globalSet("doorRight",0,buffer_bool);
htme_globalSet("light",0,buffer_bool);
//Building Status
htme_globalSet("powerOut",0,buffer_bool);
htme_globalSet("buildingPower",100,buffer_u8);
htme_globalSet("buildingTemp",60,buffer_u8);
//Camera Status
htme_globalSet("camera",0,buffer_s8);
htme_globalSet("cameraActive",0,buffer_bool);
htme_globalSet("cameraOut",0,buffer_bool);
htme_globalSet("cam1a",0,buffer_bool);
htme_globalSet("cam1b",0,buffer_bool);
htme_globalSet("cam1c",0,buffer_bool);
htme_globalSet("cam2a",0,buffer_bool);
htme_globalSet("cam2b",0,buffer_bool);
htme_globalSet("cam3",0,buffer_bool);
htme_globalSet("cam4a",0,buffer_bool);
htme_globalSet("cam4b",0,buffer_bool);
htme_globalSet("cam5",0,buffer_bool);
htme_globalSet("cam6",0,buffer_bool);
htme_globalSet("cam7",0,buffer_bool);

///Temporary
room_goto(rm_office1);