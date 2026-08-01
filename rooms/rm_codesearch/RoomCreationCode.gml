if (global.target_room_code != "") 
{
    // By passing an empty string "" as the 4th argument, we bypass the "gamename" 
    // filter entirely. GMnet will fetch ALL your servers, public AND private.
    if (udphp_downloadServerList(4, "date", "DESC", "")) 
    {
        var list = global.udphp_downloadlist;
        var found = false;
        
        if (ds_exists(list, ds_type_list)) 
        {
            for (var i = 0; i < ds_list_size(list); i++) 
            {
                var entry = list[| i];
                
                // Does Slot 7 match the code they typed / clicked?
                if (entry[? "data7"] == global.target_room_code) 
                {
                    var target_ip = entry[? "ip"];
                    
                    // Port 0 trick to auto-resolve!
                    if (htme_clientStart(target_ip, 0)) 
                    {
                        global.target_room_code = ""; 
                        found = true;
                        room_goto(rm_waitingroom); 
                        break; 
                    }
                }
            }
        }
        
        if (!found) 
        {
            instance_create(0,0,obj_i_full);
            global.target_room_code = ""; 
            // Send them back to the main menu here
        }
    }
}