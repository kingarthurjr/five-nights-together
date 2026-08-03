np_clearpresence();
np_setpresence("","Admiring the Main Menu","icon","");

instance_create(0,0,obj_switch);
instance_create_layer(0,0,"Animatronics",obj_menu_freddy);
instance_create_layer(0,0,"Animatronics",obj_menu_bonnie);
instance_create_layer(0,0,"Animatronics",obj_menu_chica);
instance_create_layer(0,0,"Title",obj_version);
global.failedToConnect = false;
global.lostConnection = false;
global.leaveIntended = false;

//Music
if !audio_is_playing(mus_menu)
{
	audio_play_sound(mus_menu,10,true);
}

//Temporary
global.mobile = false;
global.music = true;
global.lightKey = "X";
global.doorKey = "Z";