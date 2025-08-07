if htme_isLocal()
{
	global.playerNum = self.playerNum;
}

///Night Guard Syncing
if htme_globalGet("jumpscare") = 1
{
    room_goto(rm_gameover);
}

if htme_globalGet("6am") = 1
{
    if !instance_exists(obj_6am)
    {
        instance_create(0,0,obj_6am);
    }
}

if obj_gameknow.powerOut = 1 and powersound = 0 and !audio_is_playing(snd_powerout)
{
    audio_play_sound(snd_powerout,10,false);  
    audio_sound_gain(snd_powerout,0.2,0);
    powersound = 1
}
if obj_gameknow.powerOut = 0 and audio_is_playing(snd_powerout)
{
    audio_stop_sound(snd_powerout);
    powersound = 0;
}

///Global Time
if room = rm_waitingroom
{
	self.time += 1;
}

///Actual Movement
if (self.pressed_up)
{
    facing = UP;
    if room = rm_waitingroom
    {
        if(!place_meeting(x, y - spd, obj_solid)) if ((self.time % 2) = 0){y -= spd};
    }
    else
    {
        if(!place_meeting(x, y - spd, obj_solid)) y -= spd;
    }
    step++;
}

if (self.pressed_down)
{
    facing = DOWN;
    if room = rm_waitingroom
    {
        if(!place_meeting(x, y + spd, obj_solid)) if ((self.time % 2) = 0){y += spd};
    }
    else
    {
        if(!place_meeting(x, y + spd, obj_solid)) y += spd;
    }
    step++;
}

if (self.pressed_left)
{
    facing = LEFT;
    if room = rm_waitingroom
    {
        if(!place_meeting(x - spd, y, obj_solid)) if ((self.time % 2) = 0){x -= spd};
    }
    else
    {
        if(!place_meeting(x - spd, y, obj_solid)) x -= spd;
    }
    step++;
}

if (self.pressed_right)
{
    facing = RIGHT;
    if room = rm_waitingroom
    {
        if(!place_meeting(x + spd, y, obj_solid)) if ((self.time % 2) = 0){x += spd};
    }
    else
    {
        if(!place_meeting(x + spd, y, obj_solid)) x += spd;
    }
    step++;
}

if room != rm_waitingroom
{
    if(x != xprevious || y != yprevious)
    {
        image_speed = 0.4
    }
    else
    {
        image_speed = 0;
        image_index = 0;    
    }
}

///Sprite Change
if room = rm_waitingroom
{
	if self.skin = 0
	{
	    switch(facing)
	    {
	        case LEFT:
	            sprite_index = spr_waitfreddy_left;
	            break;
	        case RIGHT:
	            sprite_index = spr_waitfreddy_right;
	            break;
	    }
	}
	if self.skin = 1
	{
	    switch(facing)
	    {
	        case LEFT:
	            sprite_index = spr_waitbonnie_left;
	            break;
	        case RIGHT:
	            sprite_index = spr_waitbonnie_right;
	            break;
	    }
	}
	if self.skin = 2
	{
	    switch(facing)
	    {
	        case LEFT:
	            sprite_index = spr_waitchica_left;
	            break;
	        case RIGHT:
	            sprite_index = spr_waitchica_right;
	            break;
	    }
	}
	if self.skin = 3
	{
	    switch(facing)
	    {
	        case LEFT:
	            sprite_index = spr_waitfoxy_left;
	            break;
	        case RIGHT:
	            sprite_index = spr_waitfoxy_right;
	            break;
	    }
	}
	if self.skin = 4
	{
	    switch(facing)
	    {
	        case LEFT:
	            sprite_index = spr_waitchild_left;
	            break;
	        case RIGHT:
	            sprite_index = spr_waitchild_right;
	            break;
	    }
	}
	if self.skin = 5
	{
	    switch(facing)
	    {
	        case LEFT:
	            sprite_index = spr_waittrap_left;
	            break;
	        case RIGHT:
	            sprite_index = spr_waittrap_right;
	            break;
	    }
	}
	if self.skin = 6
	{
	    switch(facing)
	    {
	        case LEFT:
	            sprite_index = spr_waitomc_left;
	            break;
	        case RIGHT:
	            sprite_index = spr_waitomc_right;
	            break;
	    }
	}
	if self.skin = 7
	{
	    switch(facing)
	    {
	        case LEFT:
	            sprite_index = spr_waitscott_left;
	            break;
	        case RIGHT:
	            sprite_index = spr_waitscott_right;
	            break;
	    }
	}
}
else
{
	if global.animatronicChosen = 1 //Freddy
	{
		switch(facing)
		{
			case DOWN:
				if htme_globalGet("freddySpecial") = 1
				{
					sprite_index = spr_freddy_d_special;
				}
				else
				{
					sprite_index = spr_freddy_d;
				}
				break;
			case LEFT:
				sprite_index = spr_freddy_l;
				break;
			case RIGHT:
				sprite_index = spr_freddy_r;
				break;
			case UP:
				sprite_index = spr_freddy_u;
				break;
		}
	}
	if global.animatronicChosen = 2 //Bonnie
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_bonnie_d;
				break;
			case LEFT:
				sprite_index = spr_bonnie_l;
				break;
			case RIGHT:
				sprite_index = spr_bonnie_r;
				break;
			case UP:
				sprite_index = spr_bonnie_u;
				break;
		}
	}
	if global.animatronicChosen = 3 //Chica
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_chica_d;
				break;
			case LEFT:
				sprite_index = spr_chica_l;
				break;
			case RIGHT:
				sprite_index = spr_chica_r;
				break;
			case UP:
				sprite_index = spr_chica_u;
				break;
		}
	}
	if global.animatronicChosen = 4 //Foxy
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_foxy_d;
				break;
			case LEFT:
				sprite_index = spr_foxy_l;
				break;
			case RIGHT:
				sprite_index = spr_foxy_r;
				break;
			case UP:
				sprite_index = spr_foxy_u;
				break;
		}
	}
	if global.animatronicChosen = 5 //The Puppet
	{
		switch(facing)
		{
			case DOWN:
				if htme_globalGet("puppetSpecial") = 1
				{
					sprite_index = spr_puppet_d_special;
				}
				else
				{
					sprite_index = spr_puppet_d;
				}
				break;
			case LEFT:
				sprite_index = spr_puppet_l;
				break;
			case RIGHT:
				sprite_index = spr_puppet_r;
				break;
			case UP:
				sprite_index = spr_puppet_u;
				break;
		}
	}
	if global.animatronicChosen = 6 //Springtrap
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_springtrap_d;
				break;
			case LEFT:
				sprite_index = spr_springtrap_l;
				break;
			case RIGHT:
				sprite_index = spr_springtrap_r;
				break;
			case UP:
				sprite_index = spr_springtrap_u;
				break;
		}
	}
	if global.animatronicChosen = 7 //The Mimic
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_mimic_d;
				break;
			case LEFT:
				sprite_index = spr_mimic_l;
				break;
			case RIGHT:
				sprite_index = spr_mimic_r;
				break;
			case UP:
				sprite_index = spr_mimic_u;
				break;
		}
	}
	if global.animatronicChosen = 8 //Toy Freddy
	{
		switch(facing)
		{
			case DOWN:
				if htme_globalGet("freddySpecial") = 1
				{
					sprite_index = spr_tfreddy_d_special;
				}
				else
				{
					sprite_index = spr_tfreddy_d;
				}
				break;
			case LEFT:
				sprite_index = spr_tfreddy_l;
				break;
			case RIGHT:
				sprite_index = spr_tfreddy_r;
				break;
			case UP:
				sprite_index = spr_tfreddy_u;
				break;
		}
	}
	if global.animatronicChosen = 9 //Toy Bonnie
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_tbonnie_d;
				break;
			case LEFT:
				sprite_index = spr_tbonnie_l;
				break;
			case RIGHT:
				sprite_index = spr_tbonnie_r;
				break;
			case UP:
				sprite_index = spr_tbonnie_u;
				break;
		}
	}
	if global.animatronicChosen = 10 //Toy Chica
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_tchica_d;
				break;
			case LEFT:
				sprite_index = spr_tchica_l;
				break;
			case RIGHT:
				sprite_index = spr_tchica_r;
				break;
			case UP:
				sprite_index = spr_tchica_u;
				break;
		}
	}
	if global.animatronicChosen = 8 //The Mimic
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_mangle_d;
				break;
			case LEFT:
				sprite_index = spr_mangle_l;
				break;
			case RIGHT:
				sprite_index = spr_mangle_r;
				break;
			case UP:
				sprite_index = spr_mangle_u;
				break;
		}
	}
	if global.animatronicChosen = 9 //Withered Freddy
	{
		switch(facing)
		{
			case DOWN:
				if htme_globalGet("freddySpecial") = 1
				{
					sprite_index = spr_wfreddy_d_special;
				}
				else
				{
					sprite_index = spr_wfreddy_d;
				}
				break;
			case LEFT:
				sprite_index = spr_wfreddy_l;
				break;
			case RIGHT:
				sprite_index = spr_wfreddy_r;
				break;
			case UP:
				sprite_index = spr_wfreddy_u;
				break;
		}
	}
	if global.animatronicChosen = 10 //Withered Bonnie
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_wbonnie_d;
				break;
			case LEFT:
				sprite_index = spr_wbonnie_l;
				break;
			case RIGHT:
				sprite_index = spr_wbonnie_r;
				break;
			case UP:
				sprite_index = spr_wbonnie_u;
				break;
		}
	}
	if global.animatronicChosen = 11 //Withered Chica
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_wchica_d;
				break;
			case LEFT:
				sprite_index = spr_wchica_l;
				break;
			case RIGHT:
				sprite_index = spr_wchica_r;
				break;
			case UP:
				sprite_index = spr_wchica_u;
				break;
		}
	}
	if global.animatronicChosen = 12 //Withered Foxy
	{
		switch(facing)
		{
			case DOWN:
				sprite_index = spr_wfoxy_d;
				break;
			case LEFT:
				sprite_index = spr_wfoxy_l;
				break;
			case RIGHT:
				sprite_index = spr_wfoxy_r;
				break;
			case UP:
				sprite_index = spr_wfoxy_u;
				break;
		}
	}
}

///Movement Sound
if stopMoving = true
{
    if audio_is_playing(mus_puppet)
    {
        audio_stop_sound(mus_puppet);
    }
}
else
{
    if room != rm_waitingroom
    {
        if (image_index % 2 == 1 && image_index != previousFrame)
        {
            if global.animatronicChosen = 5
            {
                if global.music = true
                {
                    if !audio_is_playing(mus_puppet)
                    {
                        audio_play_sound(mus_puppet,10,true);
                    }
                }
            }
            else
            {
                randomize();
				while(sound = previousSound)
				{
					sound = choose(snd_foot1,snd_foot2,snd_foot3,snd_foot4,snd_foot5);
					if sound != previousSound
					{
						audio_play_sound(sound,1,false);
						previousSound = sound;
					}
				}
            }
        }
        if image_index = previousFrame
        {
            if audio_is_playing(mus_puppet)
            {
                audio_stop_sound(mus_puppet);
            }
        }
    }
    previousFrame = image_index;
}

///Lighting
/*
fade = 0 (do nothing)
fade = 1 (fade out)
fade = 2 (fade in)
*/

if room != rm_waitingRoom
{
    if obj_gameknow.powerOut = 1
    {
        darkness = .6;
    }
    else
    {
        if fade == 1
        {
            if darkness > 0
            {
                darkness -= .10;
            }
            else
            {
                fade = 0;
            }
        }
        if fade == 2
        {
            if darkness < .6
            {
                darkness += .10;
            }
            else
            {
                fade = 0;
            }
        }
    }
}