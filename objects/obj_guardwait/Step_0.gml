if htme_globalGet("nightReady")
{
    sprite_index = spr_animatronicsmoving;
    if !instance_exists(obj_gobutton)
    {
        instance_create(0,0,obj_gobutton);
    }
}

if htme_globalGet("jumpscare") = 1
{
    if htme_globalGet("mapSelected") = 0 //FNaF1
	{
		room_goto(rm_office1);
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
		room_goto(rm_office2);
	}
}