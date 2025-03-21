/// @description Time

//Increase to Next Hour
if time = 12
{
	time = 1;
}
else
{
	time += 1;
}
//6 AM
if time = 6
{
	htme_globalSet("6am",1,buffer_bool);
	instance_create(0,0,obj_6am);
}
else
{
	alarm[0] = room_speed*60;
}