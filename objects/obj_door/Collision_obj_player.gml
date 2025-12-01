// MOVE MOVE
if other.name = global.name //If this player is you
{
	if ((newroom == rm_backstage && htme_globalGet("backstageDoor") == 1) || (newroom == rm_closet && htme_globalGet("closetDoor") == 1) || (newroom == rm_kitchen && ((htme_globalGet("kitchenDoor") == 1) or (global.animatronicChosen != 3 and global.animatronicChosen != 4 and global.animatronicChosen != 6 and global.animatronicChosen != 7))) || (newroom == rm_saferoom && global.animatronicChosen != 6) || (newroom = rm_leftvent && htme_globalGet("leftVent") == 1) || (newroom = rm_rightvent && htme_globalGet("rightVent") == 1))
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
	        instance_create(0, 0, obj_doorfade);
	        obj_doorfade.newx = newx;
	        obj_doorfade.newy = newy;
	        obj_doorfade.newroom = newroom;
	        obj_doorfade.facing = facing;
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
	    if (!instance_exists(obj_instructions_locked))
	    {
	        instance_create(0,0,obj_instructions_locked);
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
	}
}