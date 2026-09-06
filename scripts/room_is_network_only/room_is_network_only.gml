// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_is_network_only(_room)
{
    switch(_room)
	{
        case rm_waitingroom:
        case rm_loading:
		case rm_rolechoose:
        case rm_characterselect0:
		case rm_characterselect1:
		case rm_characterselect2:
		case rm_guardwait:
		case rm_guardWin:
		case rm_gameover:
		case rm_office1:
		case rm_office2:
			
		return true;
	}
	return false;
}