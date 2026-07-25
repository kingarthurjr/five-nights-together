// MOVE MOVE
if other.name = global.name //If this player is you
{
	if ((newroom == rm_backstage && htme_globalGet("backstageDoor") == 1) || (newroom == rm_closet && htme_globalGet("closetDoor") == 1) || (newroom == rm_kitchen && ((htme_globalGet("kitchenDoor") == 1) or (global.animatronicChosen != 3 and global.animatronicChosen != 4 and global.animatronicChosen != 6 and global.animatronicChosen != 7))) || (newroom == rm_saferoom && global.animatronicChosen != 6) || (newroom = rm_leftvent && !scr_cam_isEmpty(14)) || (newroom = rm_rightvent && !scr_cam_isEmpty(15)))
	{
	    locked = true;
	}
	else
	{
	    locked = false;
	}

	if (!locked)
	{
	    if (fade == 1)
	    {
	        if !instance_exists(obj_doorfade)
			{
				instance_create(0, 0, obj_doorfade);
			}
	        obj_doorfade.newx = newx;
	        obj_doorfade.newy = newy;
	        obj_doorfade.newroom = newroom;
	        obj_doorfade.facing = facing;
			obj_doorfade.inVent = inVent;
	    }
	    else
	    {
	        obj_stat.goback = true;
	        obj_stat.prev_x = newx;
	        obj_stat.prev_y = newy;
	        room = newroom;
	    }
	}
	else
	{
	    collision = true;
	    if (!instance_exists(obj_i_locked))
	    {
	        instance_create(0,0,obj_i_locked);
	    }

	}

	///Door Sounds
	if locked = false
	{
	    //Backstage
	    if room = rm_diningarea and newroom = rm_backstage
	    {
	        audio_play_sound(snd_doorclose,10,false);
	    }
	    if room = rm_backstage
	    {
	        audio_play_sound(snd_dooropen,10,false);
	    }
	    //Kitchen
	    if room = rm_diningarea and newroom = rm_kitchen
	    {
	        audio_play_sound(snd_doorclose,10,false);
	    }
	    if room = rm_kitchen
	    {
	        audio_play_sound(snd_dooropen,10,false);
	    }
	    //Closet
	    if room = rm_westhall and newroom = rm_closet
	    {
	        audio_play_sound(snd_doorclose,10,false);
	    }
	    if room = rm_closet
	    {
	        audio_play_sound(snd_dooropen,10,false);
	    }
		//Vents
		randomize();
		if room = rm_partyroom1 or room = rm_partyroom2 
	    {
	        if !audio_is_playing(snd_vent_close) and !audio_is_playing(snd_vent_amongus)
			{
				randomize();
				var amongus = irandom_range(1,100);
				if amongus = 1 or amongus = 2
				{
					audio_play_sound(snd_vent_amongus,10,false);
				}
				else
				{
					audio_play_sound(snd_vent_close,10,false);
				}
			}
	    }
	    if room = rm_leftvent or room = rm_rightvent
	    {
	        if !audio_is_playing(snd_vent_open)
			{
				audio_play_sound(snd_vent_open,10,false);
			}
	    }
	}
}