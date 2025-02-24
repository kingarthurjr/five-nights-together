if htme_isServer() = true
{
	//Set the UI defaults
	htme_globalSet("guardSelected",-1,buffer_s8);
	htme_globalSet("mapSelected",0,buffer_u8);
	
	//Create Buttons
	instance_create(148,306,obj_wm_guard_prev);
	instance_create(172,306,obj_wm_guard_next);
	instance_create(64,382,obj_wm_map_prev);
	instance_create(88,382,obj_wm_map_next);
	//Reminder to create start button when enough players are present
}

//Set Visibility Status
if global.isPrivate = true
{
	visibility = "PRIVATE";
	visibilityColor = c_red;
}
else
{
	visibility = "PUBLIC";
	visibilityColor = c_lime;
}