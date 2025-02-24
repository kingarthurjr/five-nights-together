/// @description Start/Stop Countdown

if ds_list_size(htme_getPlayers()) > 1
{
    if pressed = false
    {    
        htme_globalSet("gameStart",1,buffer_bool);
        image_index = 1;
        pressed = true;
    }
    else
    {
        htme_globalSet("gameStart",0,buffer_bool);
        image_index = 0;
        pressed = false;
    }
}