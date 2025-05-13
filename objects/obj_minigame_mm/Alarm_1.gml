/// @description Spawn Lower Cars

david = irandom_range(1,100);
if david = 1 and davidAlready = false
{
	instance_create(860,160,obj_mm_ball);
	instance_create(860,420,obj_mm_david);
	davidAlready = true;
}
else
{
	lowerSpawn = irandom_range(1,4);
	if lowerSpawn = 1
	{
		instance_create(882,298,obj_mm_car_lower);
	}
	if lowerSpawn = 2
	{
		instance_create(882,344,obj_mm_car_lower);
	}
	if lowerSpawn = 3
	{
		instance_create(882,414,obj_mm_car_lower);
	}
	if lowerSpawn = 4
	{
		instance_create(882,461,obj_mm_car_lower);
	}
}
//Do it again
alarm[1] = irandom_range(20,30);