/// @description Pirate Cove

x = global.camMoveX;

//Who to display?
image_index = 0;
if htme_globalGet("foxy") = null
{
	image_index = 1;
}
else if htme_globalGet("mimic") = null
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 4 : ((htme_globalGet("freddySpecial")) ? 3 : 2);
}

//Create Animatronics in Draw Order
instance_create(0,0,obj_cove_springtrap);

current = image_index;