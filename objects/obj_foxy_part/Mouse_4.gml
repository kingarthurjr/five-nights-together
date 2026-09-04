obj_time.part_spawn[partNum] = false;
htme_globalSet("foxyClicked",htme_globalGet("foxyClicked")+1,buffer_u8);
if htme_globalGet("foxyClicked") >= 3
{
	htme_globalSet("foxyRunning",0,buffer_bool);
}
audio_play_sound(snd_pizzawheel,10,false);
instance_destroy();