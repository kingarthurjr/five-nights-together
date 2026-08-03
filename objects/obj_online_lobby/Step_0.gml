/// @description  Reset list if ListOffset change
if ListOffset!=ListOffset_Last
{
    myCounter=0;
    for (var i = ListOffset; i<4+ListOffset;i++) 
    {
        // Set dummy info
        MyText="... Searching for server " + string(i+1) + " ..."
        MyServerNumber=-1;    
        switch (myCounter)
        {
            case 0: obj_Lobby_button_1.MyText=MyText; obj_Lobby_button_1.MyServerNumber=MyServerNumber break;
            case 1: obj_Lobby_button_2.MyText=MyText; obj_Lobby_button_2.MyServerNumber=MyServerNumber break;
            case 2: obj_Lobby_button_3.MyText=MyText; obj_Lobby_button_3.MyServerNumber=MyServerNumber break;
            case 3: obj_Lobby_button_4.MyText=MyText; obj_Lobby_button_4.MyServerNumber=MyServerNumber break;
        }
        myCounter+=1;
    }
   
    ListOffset_Last=ListOffset;
}

///Servers (Loop)
var l = global.udphp_downloadlist;
myCounter=0;
for (var i = ListOffset; i<4+ListOffset;i++) 
{
    //draw_text(10,85+80*i,"=("+string(i+1)+")=");
    ServerInfoSet=false;
    MyText="";
    MyServerNumber=i;    
    if (ds_exists(l,ds_type_list)) 
    {
        if (ds_list_size(l)>i) 
        {
            //Get stuff from the downloadlist
            var entry = l[| i];
            var ip = entry[? "ip"];
            var game = entry[? "data1"];
            var servername = entry[? "data2"];
            var description = entry[? "data3"];
            var totalPlayers = entry[? "data6"];
            //draw_text(70,85+80*i,servername+" | "+ip);
            //draw_text(70,115+80*i,description);
            MyText+=string(servername);
            MyText+="#" + string(description) + " (" + string(totalPlayers) + "/7)";
            ServerInfoSet=true;            
        }
    }
    if ServerInfoSet=false
    {
        // Set dummy info
        MyText="... Searching for server " + string(i+1) + " ..."
        MyServerNumber=-1;
    }
    switch (myCounter)
    {
        case 0: obj_Lobby_button_1.MyText=MyText; obj_Lobby_button_1.MyServerNumber=MyServerNumber break;
        case 1: obj_Lobby_button_2.MyText=MyText; obj_Lobby_button_2.MyServerNumber=MyServerNumber break;
        case 2: obj_Lobby_button_3.MyText=MyText; obj_Lobby_button_3.MyServerNumber=MyServerNumber break;
        case 3: obj_Lobby_button_4.MyText=MyText; obj_Lobby_button_4.MyServerNumber=MyServerNumber break;
    }
    myCounter+=1;
}

// 1. Check if we arrived in this room via a Discord Invite
if (global.target_room_code != "") 
{
    var _list = global.udphp_downloadlist;
    
    // 2. Wait patiently until GMnet has actually finished downloading the list
    if (ds_exists(_list, ds_type_list) && ds_list_size(_list) > 0) 
    {
        var _found = false;
        
        // 3. The list is ready! Scan it for our Discord room code.
        for (var i = 0; i < ds_list_size(_list); i++) 
        {
            var entry = _list[| i];
            
            if (entry[? "data7"] == global.target_room_code) 
            {
                _found = true;
                
                // 4. Match found! Tell GMnet which slot we are "clicking"
                MyServerNumber = i; 
                
                // 5. Execute your exact native GMnet connection logic
                var ip = entry[? "ip"];
                var game = entry[? "data1"];
                var the_server_port = entry[? "data4"]; 
                
                scr_steam_on_LoadSteamIDFromLobby(entry[? "data7"]);
                global.ConnectToServerPort = real(the_server_port);                    
                
                if (game != self.game) 
                {
                    show_debug_message("Game server or version is incompatible!");
                    global.target_room_code = ""; // Clear to stop looping
                    exit;
                }
                else 
                {
                    if (script_execute(asset_get_index("htme_clientStart"), ip, 0)) 
                    {
                        if (entry[? "data3"] == "PRIVATE") 
                        {
                            global.isPrivate = true;
                        } 
                        else 
                        {
                            global.isPrivate = false;
                        }
                        
                        global.target_room_code = ""; // Clear on success
                        room_goto(htme_rom_connecting);
                    }
                    else 
                    {
                        show_debug_message("Could not start client!");
                        global.target_room_code = ""; // Clear on failure
                    }
                }
                break; // Exit the loop
            }
        }
        
        // 6. What if the list finished downloading, but the server isn't there?
        if (!_found) 
        {
            show_debug_message("Target server no longer exists on Master Server.");
            global.target_room_code = ""; // Clear it so the player can use the lobby normally
        }
    }
}