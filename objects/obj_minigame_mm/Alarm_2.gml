/// @description Spawn Upper Cars

upperSpawn = irandom_range(1,4);
if upperSpawn = 1
{
	instance_create(80,66,obj_mm_car_upper);
}
if upperSpawn = 2
{
	instance_create(80,112,obj_mm_car_upper);
}
if upperSpawn = 3
{
	instance_create(80,182,obj_mm_car_upper);
}
if upperSpawn = 4
{
	instance_create(80,228,obj_mm_car_upper);
}
//Do it again
alarm[2] = irandom_range(20,30);