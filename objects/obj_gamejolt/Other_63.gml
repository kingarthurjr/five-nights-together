// Check if the popup that just closed is our login prompt
if (ds_map_find_value(async_load, "id") == login_prompt_id)
{
    
    // Check if they pressed "OK" (status == true) and didn't just close the window
    if (ds_map_find_value(async_load, "status"))
	{
        
        // Grab what they typed
        var _user = ds_map_find_value(async_load, "username");
        var _token = ds_map_find_value(async_load, "password");
        
        // Send it to GameJolt
        GJLogin(_user, _token, function(_success)
		{
            if (_success)
			{
                show_debug_message("SUCCESS: Logged into GameJolt!");
                // Optional: Go to the next room or unlock features here
            } else
			{
                show_message_async("Login failed. Check your Username and Token.");
            }
        });
    }
}