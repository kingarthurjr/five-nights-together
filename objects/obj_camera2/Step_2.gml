/*
0 = Stage
1 = Office
2 = Left Office
3 = Right Office
4 = Office Hall
5 = Prize Corner
6 = Game Area
7 = Kid's Cove
8 = Main Hall
9 = Parts and Service 
10 = Party Room 1
11 = Party Room 2
12 = Party Room 3
13 = Party Room 4
14 = Left Vent
15 = Right Vent
*/

if htme_globalGet("camera") != current //If camera changed
{
	//Randomize Easter Egg Text Chance
	teaseFUN = irandom_range(1,100);
	
	//Create Camera Transition Animation
	if instance_exists(obj_movement)
	{
		instance_destroy(obj_movement);
	}
	if instance_exists(obj_switch)
	{
		instance_destroy(obj_switch);
	}
	instance_create(0,0,obj_switch);
	
	//Create Camera Feed
	if htme_globalGet("camera") = 0
	{
		if !instance_exists(obj_cam09)
		{
			instance_create(0,0,obj_cam09);
		}
	}
	if htme_globalGet("camera") = 5
	{
		if !instance_exists(obj_cam11)
		{
			instance_create(0,0,obj_cam11);
		}
	}
	if htme_globalGet("camera") = 6
	{
		if !instance_exists(obj_cam10)
		{
			instance_create(0,0,obj_cam10);
		}
	}
	if htme_globalGet("camera") = 7
	{
		if !instance_exists(obj_cam12)
		{
			instance_create(0,0,obj_cam12);
		}
	}
	if htme_globalGet("camera") = 8
	{
		if !instance_exists(obj_cam07)
		{
			instance_create(0,0,obj_cam07);
		}
	}
	if htme_globalGet("camera") = 9
	{
		if !instance_exists(obj_cam08)
		{
			instance_create(0,0,obj_cam08);
		}
	}
	if htme_globalGet("camera") = 10
	{
		if !instance_exists(obj_cam01)
		{
			instance_create(0,0,obj_cam01);
		}
	}
	if htme_globalGet("camera") = 11
	{
		if !instance_exists(obj_cam02)
		{
			instance_create(0,0,obj_cam02);
		}
	}
	if htme_globalGet("camera") = 12
	{
		if !instance_exists(obj_cam03)
		{
			instance_create(0,0,obj_cam03);
		}
	}
	if htme_globalGet("camera") = 13
	{
		if !instance_exists(obj_cam04)
		{
			instance_create(0,0,obj_cam04);
		}
	}
	if htme_globalGet("camera") = 14
	{
		if !instance_exists(obj_cam05)
		{
			instance_create(0,0,obj_cam05);
		}
	}
	if htme_globalGet("camera") = 15
	{
		if !instance_exists(obj_cam06)
		{
			instance_create(0,0,obj_cam06);
		}
	}
}