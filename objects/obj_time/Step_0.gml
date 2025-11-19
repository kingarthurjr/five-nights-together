/// @description Special Events

//Freddy Special
if htme_globalGet("freddySpecial") and !instance_exists(obj_musicbox)
{
	instance_create(0,0,obj_musicbox);
}