// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_serverGuardCheck(_event)
{
    if (_event[? "hash"] == global.htme_object.guardHash)
    {
        show_debug_message("NIGHT GUARD LEFT THE GAME!");
		if room != rm_waitingroom and room != rm_loading and room != rm_guardWin and room != rm_gameover
		{
			room_goto(rm_guardleft);
		}
    }
}