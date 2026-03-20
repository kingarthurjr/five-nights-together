///Set Night Guard Defaults

//Time
htme_globalSet("6am",0,buffer_bool);
//Office Status
htme_globalSet("facing",0,buffer_u8);
htme_globalSet("doorLeft",0,buffer_bool);
htme_globalSet("doorRight",0,buffer_bool);
htme_globalSet("light",0,buffer_bool);
htme_globalSet("mask",0,buffer_u8);
//Building Status
htme_globalSet("powerOut",0,buffer_bool);
htme_globalSet("buildingPower",100,buffer_u8);
htme_globalSet("buildingTemp",60,buffer_u8);
htme_globalSet("ovenUse",0,buffer_u8);
htme_globalSet("ovenTemp",160,buffer_u16);
global.bluescreenFirstTime = false;
//Camera Status
global.camMove = 0;
global.camMoveX = 0;
htme_globalSet("camera",0,buffer_s8);
htme_globalSet("cameraActive",0,buffer_bool);
htme_globalSet("cameraOut",0,buffer_bool);
htme_globalSet("camerasRebooted",0,buffer_u8);
	//FNaF1
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
	//FNaF2
	htme_globalSet("cam01",0,buffer_bool);
	htme_globalSet("cam02",0,buffer_bool);
	htme_globalSet("cam03",0,buffer_bool);
	htme_globalSet("cam04",0,buffer_bool);
	htme_globalSet("cam05",0,buffer_bool);
	htme_globalSet("cam06",0,buffer_bool);
	htme_globalSet("cam07",0,buffer_bool);
	htme_globalSet("cam08",0,buffer_bool);
	htme_globalSet("cam09",0,buffer_bool);
	htme_globalSet("cam10",0,buffer_bool);
	htme_globalSet("cam11",0,buffer_bool);
	htme_globalSet("cam12",0,buffer_bool);
//Animatronics
htme_globalSet("breakBonnie",0,buffer_bool);
htme_globalSet("foxyWatched",0,buffer_bool);
htme_globalSet("foxyClicked",0,buffer_u8);
htme_globalSet("jumpscare",0,buffer_bool);
htme_globalSet("jumpscareHappened",0,buffer_bool);
htme_globalSet("gameover",0,buffer_bool);
htme_globalSet("leftSeen",0,buffer_bool);
htme_globalSet("rightSeen",0,buffer_bool);

///Temporary
room_goto(rm_office2);