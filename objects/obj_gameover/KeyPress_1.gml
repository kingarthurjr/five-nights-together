if !instance_exists(obj_dead) and !instance_exists(obj_endstatic)
{
	htme_globalSet("jumpscare",0,buffer_bool);
	room_goto(rm_waitingroom);
}