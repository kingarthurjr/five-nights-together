///Set Animatronic Defaults

//Temp
if htme_globalGet("mapSelected") = 0
{
	room_goto(rm_characterselect1);
}
if htme_globalGet("mapSelected") = 1
{
	room_goto(rm_characterselect2);
}

//Background
bg = layer_get_id("Background");
if htme_globalGet("mapSelected") = 0 //FNaF1
{
	layer_background_sprite(bg,bg_cs_fnaf1);
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	layer_background_sprite(bg,bg_cs_fnaf2);
}

//Location
htme_globalSet("freddy",0,buffer_s8);
htme_globalSet("bonnie",0,buffer_s8);
htme_globalSet("chica",0,buffer_s8);
htme_globalSet("foxy",0,buffer_s8);
htme_globalSet("puppet",0,buffer_s8);
htme_globalSet("springtrap",0,buffer_s8);
htme_globalSet("mimic",0,buffer_s8);
htme_globalSet("tfreddy",0,buffer_s8);
htme_globalSet("tbonnie",0,buffer_s8);
htme_globalSet("tchica",0,buffer_s8);
htme_globalSet("mangle",0,buffer_s8);
htme_globalSet("wfreddy",0,buffer_s8);
htme_globalSet("wbonnie",0,buffer_s8);
htme_globalSet("wchica",0,buffer_s8);
htme_globalSet("wfoxy",0,buffer_s8);
//Jumpscaring
global.atDoor = false;
htme_globalSet("tooLate",0,buffer_u8);
htme_globalSet("whoGot",0,buffer_u8);
//Abilities
htme_globalSet("freddySpecial",0,buffer_bool);
htme_globalSet("freddyOut",0,buffer_bool);
htme_globalSet("bonnieSpecial",0,buffer_bool);
htme_globalSet("bonnieBroke",0,buffer_bool);
htme_globalSet("ovenUse",0,buffer_u8);
htme_globalSet("foxyReady",900,buffer_u16);
htme_globalSet("foxyRunning",0,buffer_bool);
htme_globalSet("bonk",0,buffer_bool);
htme_globalSet("puppetSpecial",0,buffer_bool);
htme_globalSet("puppetUsed",0,buffer_bool);
htme_globalSet("bbGame",0,buffer_bool);
global.bbRoom = 0;
global.bbLocation = 0;
global.currentMimic = 0;
//Lockable Doors
htme_globalSet("kitchenDoor",0,buffer_bool);
htme_globalSet("closetDoor",0,buffer_bool);
htme_globalSet("backstageDoor",0,buffer_bool);
htme_globalSet("leftVent",0,buffer_bool);
htme_globalSet("rightVent",0,buffer_bool);
//Death Coin
global.coinRoom = 0;
global.coinLocation = 0;
//Difficulty Counter
htme_globalSet("guardScore",0,buffer_u32);

global.warnsound = 0;
global.clickable = true;