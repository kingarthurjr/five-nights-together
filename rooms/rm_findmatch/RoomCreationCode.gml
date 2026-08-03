instance_activate_all();

np_clearpresence();
np_setpresence("","Finding a Match","icon","");

//Temporary
var ttr = totro(5,7,1);
global.name = "Guest_" + ttr[0];
global.skin = 0;
global.animatronicChosen = 0;
global.color = $FFC97F;

//Keep
global.isPrivate = false; //Reset isPrivate to false every time
global.password = false;
global.animatronics = ["freddy","bonnie","chica","foxy","puppet","springtrap","mimic","tfreddy","tbonnie","tchica","mangle","wfreddy","wbonnie","wchica","wfoxy"];
global.coinLocation = 0;
global.target_room_code = "";
global.my_room_code = "";

if !audio_is_playing(mus_flipside)
{
	audio_stop_all();
	audio_play_sound(mus_flipside,10,true);
}
instance_create(0,0,obj_switch);

if global.failedToConnect = true
{
	instance_create(0,0,obj_i_full);
}
global.failedToConnect = false;

if global.lostConnection = true
{
	instance_create(0,0,obj_i_connection);
}
global.lostConnection = false;
global.leaveIntended = false;