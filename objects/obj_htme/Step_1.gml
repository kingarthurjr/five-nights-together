/// @description Host leave detection

// Make sure this only runs for clients, not the host
if (!htme_isServer())
{ 
    // Check if the connection to the host has dropped or timed out
    if (htme_clientConnectionFailed())
	{   
        // Safely shut down the GMnet client to stop it from looking for data
        htme_clientStop(); 
        
        // Throw the player back to your server list room
        room_goto(rm_findmatch);
		instance_create(0,0,obj_i_connection);
    }
}