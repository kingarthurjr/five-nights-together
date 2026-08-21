var async_id = async_load[? "id"];

if (async_id == request_login)
{
    if (async_load[? "status"])
	{ 
        // Temporarily store these globally so our callback can see them
        global.temp_user = async_load[? "username"];
        global.temp_token = async_load[? "password"];
        
        GJLogin(global.temp_user,global.temp_token,OnLoginAttempt,0);
    }
}