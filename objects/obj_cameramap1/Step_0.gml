//Sync Keyboard Control Index
for (var i = 0; i < array_length(camera_list); i++)
{
	if camera_list[i] == htme_globalGet("camera")
	{
	    index = i; // Update index to match clicked camera
	    break; // Stop searching
	}
}