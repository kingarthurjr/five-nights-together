var _id = ds_map_find_value(async_load, "id");
var _status = ds_map_find_value(async_load, "status");

// Only proceed if they clicked "OK"
if (_status)
{    
    // Did they just answer the Username prompt?
    if (_id == prompt_user_id)
	{
        temp_user = ds_map_find_value(async_load, "result");
		global.temp_user = temp_user;
        
        // Trigger the Token prompt immediately after
        prompt_token_id = get_string_async("Enter your GameJolt Token:", "");
    }
    
    // Did they just answer the Token prompt?
    else if (_id == prompt_token_id)
	{
        var _token = ds_map_find_value(async_load, "result");
		global.temp_token = _token;
        
        // Send both to GameJolt
        GJLogin(temp_user,_token,function(_success)
		{
            if (_success)
			{
                show_message_async("Login successful!");
				global.name = GJGetLoginStatus();
        
		        // SAVE TO INI: The login worked, so let's save those temporary variables
		        ini_open("gj_login.ini");
		        ini_write_string("Auth","Username",global.temp_user);
		        ini_write_string("Auth","Token",global.temp_token);
		        ini_close();
        
		        GJSessionUpdate("open","",-1,0);
		        alarm[0] = 1800;
				room_restart();
            }
			else
			{
                show_message_async("Login failed. Check your info.");
            }
        },0);
    }
}