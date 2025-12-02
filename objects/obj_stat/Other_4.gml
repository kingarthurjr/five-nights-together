///If returned to map-room, do stuff
if(instance_number(obj_player) > 0 && goback)
{
    goback = false;
    obj_player.x = prev_x;
    obj_player.y = prev_y;
    obj_player.facing = facing;
	obj_player.inVent = inVent;
}