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
		sprite_prefetch(spr_switch);
		sprite_prefetch(spr_cam1a);
		sprite_prefetch(spr_cam1b);
		sprite_prefetch(spr_cam1c);
		sprite_prefetch(spr_cam2a);
		sprite_prefetch(spr_cam2b);
		sprite_prefetch(spr_cam3);
		sprite_prefetch(spr_cam4a);
		sprite_prefetch(spr_cam4b);
		sprite_prefetch(spr_cam5);
		sprite_prefetch(spr_cam6);
		sprite_prefetch(spr_cam7);
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
		sprite_prefetch(spr_switch);
		sprite_prefetch(spr_cam01);
		sprite_prefetch(spr_cam02);
		sprite_prefetch(spr_cam03);
		sprite_prefetch(spr_cam04);
		sprite_prefetch(spr_cam05);
		sprite_prefetch(spr_cam06);
		sprite_prefetch(spr_cam07);
		sprite_prefetch(spr_cam08);
		sprite_prefetch(spr_cam09);
		sprite_prefetch(spr_cam10);
		sprite_prefetch(spr_cam11);
		sprite_prefetch(spr_cam12);
		sprite_prefetch(spr_office2_animatronics);
	}
}

room_goto_next();