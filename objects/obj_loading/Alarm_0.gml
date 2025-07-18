if htme_globalGet("name["+string(htme_globalGet("guardSelected"))+"]") = global.name
{
	if htme_globalGet("mapSelected") = 0
	{
		//Start loading the heavy animations
		sprite_prefetch(spr_office1);
		sprite_prefetch(spr_office1_leftturn);
		sprite_prefetch(spr_office1_leftturn_closed);
		sprite_prefetch(spr_office1_rightturn);
		sprite_prefetch(spr_office1_rightturn_closed);
		sprite_prefetch(spr_office1_left);
		sprite_prefetch(spr_office1_left_door);
		sprite_prefetch(spr_office1_right);
		sprite_prefetch(spr_office1_right_door);
		sprite_prefetch(spr_monitor);
		sprite_prefetch(spr_handunit);
	}
	if htme_globalGet("mapSelected") = 1
	{
		//Start loading the heavy animations
		sprite_prefetch(spr_office2);
		sprite_prefetch(spr_office2_leftturn);
		sprite_prefetch(spr_office2_rightturn);
		sprite_prefetch(spr_office2_left);
		sprite_prefetch(spr_office2_right);
		sprite_prefetch(spr_monitor);
		sprite_prefetch(spr_handunit);
		sprite_prefetch(spr_mask_flip);
		sprite_prefetch(spr_mask);
	}
}

room_goto_next();