/// @description Insert description here
// You can write your code in this editor

if htme_isLocal()
{
	global.playerNum = self.playerNum;
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
}