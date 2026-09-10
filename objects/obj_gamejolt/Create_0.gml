request_login = -1;

// 1. Initialize the wrapper (Replace with your actual ID and Key)
GJInit("632695","1649efcd2efef17b86a437f7e13900a9",false);

// 2. Define what happens when a login finishes
function OnLoginAttempt(Success,ErrorMessage,RetryNumber)
{
    if (Success)
	{
        global.name = GJGetLoginStatus();
        
        // SAVE TO INI: The login worked, so let's save those temporary variables
        ini_open("gj_login.ini");
        ini_write_string("Auth","Username",global.temp_user);
        ini_write_string("Auth","Token",global.temp_token);
        ini_close();
        
        GJSessionUpdate("open","",-1,0);
        alarm[0] = 1800; 
    } else
	{
        show_debug_message("Login Failed: " + ErrorMessage);
    }
}

// Check for saved login info
ini_open("gj_login.ini");
var saved_user = ini_read_string("Auth","Username","");
var saved_token = ini_read_string("Auth","Token","");
ini_close();

// If we found saved info, automatically attempt to log in
if (saved_user != "" && saved_token != "")
{
    
    // Set the temp variables again just in case the login succeeds and rewrites the INI
    global.temp_user = saved_user;
    global.temp_token = saved_token;
    
    // Silently attempt login
    GJLogin(saved_user,saved_token,OnLoginAttempt,0);
}

//GJDataSet("version","2.0.0.10",false,-1,0);

function OnVersionCheck(Success, Data, ErrorMessage, RetryNumber)
{
	// Check if the fetch was successful
	if (Success)
	{
		if Data != global.version
		{
			global.updateDetected = true;
			room_goto(rm_menu);
			instance_destroy(obj_gamejolt);
		}
	}
}

GJDataFetch("version",false,OnVersionCheck,0);