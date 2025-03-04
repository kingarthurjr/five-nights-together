/*
0 = Stage
1 = Left Office
2 = Right Office
3 = Dining Room
4 = Backstage
5 = West Hall
6 = East Hall
7 = W. Hall Corner
8 = E. Hall Corner
9 = Kitchen
10 = Supply Closet
11 = Restrooms
*/

if htme_globalGet("camera") != current //If camera changed
{
	//Randomize Easter Egg Text Chance
	teaseFUN = irandom_range(1,100);
	
	//Create Camera Transition Animation
	if !instance_exists(obj_switch)
	{
		instance_create(0,0,obj_switch);
	}
	
	//Create New Camera Feed
	if htme_globalGet("camera") = 0
	{
		if !instance_exists(obj_cam1a)
		{
			instance_create(0,0,obj_cam1a);
		}
	}
	if htme_globalGet("camera") = 3
	{
		if !instance_exists(obj_cam1b)
		{
			instance_create(0,0,obj_cam1b);
		}
	}
	if htme_globalGet("camera") = null
	{
		if !instance_exists(obj_cam1c)
		{
			instance_create(0,0,obj_cam1c);
		}
	}
	if htme_globalGet("camera") = 4
	{
		if !instance_exists(obj_cam5)
		{
			instance_create(0,0,obj_cam5);
		}
	}
	if htme_globalGet("camera") = 5
	{
		if !instance_exists(obj_cam2a)
		{
			instance_create(0,0,obj_cam2a);
		}
	}
	if htme_globalGet("camera") = 6
	{
		if !instance_exists(obj_cam4a)
		{
			instance_create(0,0,obj_cam4a);
		}
	}
	if htme_globalGet("camera") = 7
	{
		if !instance_exists(obj_cam2b)
		{
			instance_create(0,0,obj_cam2b);
		}
	}
	if htme_globalGet("camera") = 8
	{
		if !instance_exists(obj_cam4b)
		{
			instance_create(0,0,obj_cam4b);
		}
	}
	if htme_globalGet("camera") = 9
	{
		if !instance_exists(obj_cam6)
		{
			instance_create(0,0,obj_cam6);
		}
	}
	if htme_globalGet("camera") = 10
	{
		if !instance_exists(obj_cam3)
		{
			instance_create(0,0,obj_cam3);
		}
	}
	if htme_globalGet("camera") = 11
	{
		if !instance_exists(obj_cam7)
		{
			instance_create(0,0,obj_cam7);
		}
	}
}