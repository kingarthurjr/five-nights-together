//Sprite
if htme_globalGet("powerOut") = 1
{
	image_index = 1;
}
else
{
	image_index = 0;
}

//Variables
generator = 0;
cameras = 0;

//Buttons
instance_create_layer(640,300,"Buttons",obj_hu_generator);
instance_create_layer(640,340,"Buttons",obj_hu_cameras);
instance_create_layer(640,380,"Buttons",obj_hu_exit);