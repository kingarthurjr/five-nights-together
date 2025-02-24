if htme_globalGet(animatronic+"Taken") = global.name //If not taken by you
{
	image_index = 1;
}
else
{
	if htme_globalGet(animatronic+"Taken") = "noone" //No one took it
	{
		image_index = 0;
	}
	else //Someone else did
	{
		image_index = 2;
	}
}