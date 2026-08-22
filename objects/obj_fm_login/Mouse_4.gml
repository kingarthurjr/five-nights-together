// In a Create, Step, or Mouse Pressed event
//request_login = get_login_async("GameJolt Username","GameJolt Token");

if GJGetLoginStatus() != ""
{
	if (file_exists("gj_login.ini")) 
	{
		file_delete("gj_login.ini");
	}
	
	__GjUsername = "";
	__GjGameToken = "";
	global.temp_user = "";
	global.temp_token = "";

	with (obj_gamejolt)
	{
	    // Delete the API's internal list first to prevent memory leaks
	    ds_list_destroy(__GjCallList); 
    
	    // Destroy the object itself
	    instance_destroy(); 
	}

	instance_create(0,0,obj_gamejolt);
	room_restart();
}
else
{
	request_login = get_login_async("GameJolt Username","GameJolt Token");
}