//Camera Disabled
if htme_globalGet("cam02") = 1
{
    if !instance_exists(obj_videoerror)
    {
        instance_create(0,0,obj_videoerror);
    }
}
else
{
    if instance_exists(obj_videoerror)
    {
        instance_destroy(obj_videoerror);
    }
}
//Camera Change
if htme_globalGet("camera") != 11
{
	instance_destroy();
}

//Flashlight
if keyboard_check(ord(global.lightKey)) and !instance_exists(obj_videoerror)
{
	htme_globalSet("light",1,buffer_bool);
	if !audio_is_playing(snd_light2)
	{
		audio_play_sound(snd_light2,10,true);
	}
	image_index = 1;
}
if keyboard_check_released(ord(global.lightKey)) or instance_exists(obj_videoerror) or instance_exists(obj_movement)
{
	htme_globalSet("light",0,buffer_bool);
		if audio_is_playing(snd_light2)
	{
		audio_stop_sound(snd_light2);
	}
	image_index = 0;
}