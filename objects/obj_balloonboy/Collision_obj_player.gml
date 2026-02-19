if other.name = global.name 
{
	if htme_globalGet("bbLocation") = whichBB and global.animatronicChosen = 6
	{
	    if !instance_exists(obj_minigame_bb)
	    {
	        instance_create(0,0,obj_minigame_bb);
	    }
	    htme_globalSet("bbLocation",0,buffer_u8);
	}
}