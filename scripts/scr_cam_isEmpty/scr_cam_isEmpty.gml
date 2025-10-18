// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cam_isEmpty(argument0)
{
	for(var i=0;i<array_length(global.animatronics);i++)
	{
		if htme_globalGet(global.animatronics[i]) = argument0
		{
			return false;
			break;
		}
	}
	return true;
}