audio_stop_sound(snd_rebooting);
if obj_handunit.generator = 1
{
    if htme_globalGet("powerOut") = 1
    {
        audio_play_sound(snd_powerback,10,false);
        htme_globalSet("powerOut",1,buffer_bool);
        with(obj_office1)
        {
            sprite_index = spr_office1;
        }
        with(obj_handunit)
        {
            sprite_index = spr_handunit;
        }
    }
    obj_handunit.generator = 0;
}
if obj_handunit.cameras = 1
{
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
	obj_handunit.cameras = 0;
}
audio_stop_sound(snd_rebooting);
audio_play_sound(snd_done,10,false);
instance_destroy();
instance_create(640,300,obj_hu_generator);
instance_create(640,340,obj_hu_cameras);
instance_create(640,380,obj_hu_exit);