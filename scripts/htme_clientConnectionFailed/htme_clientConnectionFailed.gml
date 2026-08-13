/// @description htme_clientConnectionFailed()
function htme_clientConnectionFailed() {

	/*
	**  Description:
	**      Use this function to determine if the connection failed after starting a client.
	**      The usage is very specific:
	**      * This only works as expected if a client was already started
	**  
	**  Usage:
	**      <see above>
	**
	**  Arguments:
	**      <none>
	**
	**  Returns:
	**      true, if connection failed or client has otherwise died
	**      false if connection is still processing or finished.
	**
	*/

	if global.leaveIntended = false
	{
		// THE OVERRIDE: Catch the disconnect before data is destroyed
		if (room != rm_findmatch) { // Replace rm_menu with your actual menu room name
    
		    // Instantly freeze all other objects so they skip the rest of this frame
		    instance_deactivate_all(true);
    
			global.lostConnection = true;
		
		    // Queue the room change
		    room_goto(rm_findmatch);
		}
	}
	
	// Check if obj_htme exists (udphp_stopClient may have destroyed it when connection falied)
	if instance_exists(global.htme_object)
	{
	    with (global.htme_object) {
	        return self.clientStopped;
	    }
	}
	else
	{
	    return true;
	}



}
