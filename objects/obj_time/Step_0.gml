/// @description Special Events

//Freddy Special
if htme_globalGet("freddySpecial") and !instance_exists(obj_musicbox)
{
	instance_create(0,0,obj_musicbox);
}

//Foxy Special
if htme_globalGet("foxyRunning")
{
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
		if part_spawn[0] = false and part_spawn[1] = false and part_spawn[2] = false and part_spawn[3] = false
		{		
			//Play Sound
			if htme_globalGet("wfoxyTaken") != "noone"
			{
				randomize();
				audio_play_sound(choose(snd_foxylaugh1,snd_foxylaugh2,snd_foxylaugh3),10,false);
			}
			if htme_globalGet("mangleTaken") != "noone"
			{
				audio_play_sound(snd_mangle,10,true);
			}
			if htme_globalGet("mimicTaken") != "noone"
			{
				audio_play_sound(snd_foxylaugh_mimic,10,false);
			}
			//Randomly Select 3 Parts to Spawn
			var slots = [0,1,2,3];
			for (var i = array_length(slots) - 1; i > 0; i--)
			{
			    var j = irandom(i);
    
			    var temp = slots[i];
			    slots[i] = slots[j];
			    slots[j] = temp;
			}
			for (var i = 0; i < 3; i++)
			{
				part_spawn[slots[i]] = true;
			}
		}
		ini_open("settings.ini");
		if ini_read_real("Game","Foxy2",0) = 0
		{
			instance_create(0,0,obj_i_foxy2);
			ini_write_real("Game","Foxy2",1);
		}
		ini_close();
	}
}
else //If Foxy is not running
{
	if audio_is_playing(snd_mangle)
	{
		audio_stop_sound(snd_mangle);
	}
	part_spawn[0] = false;
	part_spawn[1] = false;
	part_spawn[2] = false;
	part_spawn[3] = false;
}