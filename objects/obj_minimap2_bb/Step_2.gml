if (current != htme_globalGet("bbLocation")) and global.animatronicChosen = 6
{
	audio_play_sound(choose(snd_bb_hello,snd_bb_hi,snd_bb_laugh),10,false);
	ini_open("settings.ini");
	if ini_read_real("Game","BBLure",0) = 0
	{
		instance_create(0,0,obj_i_springtrap);
	}
	ini_close();
}