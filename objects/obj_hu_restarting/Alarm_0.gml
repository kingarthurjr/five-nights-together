audio_stop_sound(snd_rebooting);
if obj_handunit.generator = 1
{
    if htme_globalGet("powerOut") = 1
    {
        audio_play_sound(snd_powerback,10,false);
        htme_globalSet("powerOut",0,buffer_bool);
        if htme_globalGet("mapSelected") = 0 //FNaF1
		{
			with(obj_office1_outage)
	        {
	            instance_change(obj_office1,true);
	        }
		}
		if htme_globalGet("mapSelected") = 1 //FNaF2
		{
			with(obj_office2_outage)
	        {
	            instance_change(obj_office2,true);
	        }
		}
    }
    obj_handunit.generator = 0;
}
if obj_handunit.cameras = 1
{
    if htme_globalGet("mapSelected") = 0 //FNaF1
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
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
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
	}
	htme_globalSet("camerasRebooted",htme_globalGet("camerasRebooted")+1,buffer_u8);
	obj_handunit.cameras = 0;
}
audio_stop_sound(snd_rebooting);
audio_play_sound(snd_done,10,false);
instance_destroy();
instance_create(640,300,obj_hu_generator);
instance_create(640,340,obj_hu_cameras);
instance_create(640,380,obj_hu_exit);