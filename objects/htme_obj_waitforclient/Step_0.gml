/// @description Check if client is connected
if (htme_clientIsConnected()) 
{
	if global.isPrivate = true and global.password = false
	{
		room_goto(rm_password);
	}
	else
	{
		room_goto(rm_waitingroom);
	}
}
if (htme_clientConnectionFailed()) {
    htme_error_message_handler("Connection with server failed, it may be full!");
    htme_clientStop();
    room_goto(rm_findmatch);
	global.failedToConnect = true;
}

