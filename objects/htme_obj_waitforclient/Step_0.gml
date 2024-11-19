/// @description Check if client is connected
if (htme_clientIsConnected()) 
{
	if global.isPrivate = true
	{
		room_goto(rm_password);
	}
	else
	{
		room_goto(htme_rom_demo);
	}
}
if (htme_clientConnectionFailed()) {
    htme_error_message_handler("Connection with server failed, it may be full!");
    htme_clientStop();
    room_goto(rm_findmatch);
}

