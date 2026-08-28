/// @description htme_clientStop()
function htme_clientStop() {

	/*
	**  Description:
	**      This will stop the client. Please note that this will NOT reset most of the variables.
	**      It will only kill the socket and mark the engine as not being started.
	**      The server will not be informed, and you will time out on the server.
	**      If you want to shutdown the client while informing the server
	**      use htme_clientShutdown.
	**  
	**  Usage:
	**      <See above>
	**
	**  Arguments:
	**      <None>
	**
	**  Returns:
	**      <Nothing>
	**
	*/
	
	// --- THE GLOBAL FAILSAFE ---
	// Only trigger this if the player did not intentionally click "Quit" or "Disconnect"
	if (global.leaveIntended == false)
	{
	    global.lostConnection = true; 
		if instance_exists(obj_lighting)
		{
			instance_destroy(obj_lighting);
		}
    
	    // Instantly freeze all other custom game objects
	    instance_deactivate_all(true);
    
	    // Keep the network controller awake just long enough to finish the rest of this script
	    instance_activate_object(obj_htme);
    
	    // Queue the room change to the lobby safely
	    if (room != rm_findmatch)
		{
	        room_goto(rm_findmatch);
	    }
	}
	// ---------------------------
	
	with (global.htme_object) {
	    htme_debugger("htme_clientStop",htme_debug.WARNING,"STOPPING CLIENT");
	    htme_shutdown();
	    if (self.use_udphp) {
	        script_execute(asset_get_index("udphp_stopClient"),self.udphp_client_id);
	        // Clean variable
	        self.udphp_client_id = noone;        
	    }
	}



}
