/// @description Host leave detection

// Are we a client in an active game, but not in the menus?
if (!htme_isServer() && htme_isStarted() && room != rm_findmatch && room != htme_rom_connecting) 
{
    // Did the End Step from the previous frame drop the connection?
    if (!htme_clientIsConnected()) 
    {
        // 1. Instantly freeze every other object BEFORE the Step phase list is built
        instance_deactivate_all(true);
        
        // 2. Officially kill the client connection 
        htme_clientDisconnect();
        
        // 3. Wipe the Discord target code 
        global.target_room_code = "";
        
        // 4. Safely transition back to the lobby
        room_goto(rm_findmatch);
    }
}