if other.name = global.name 
{
	if htme_globalGet("bbLocation") = whichBB and global.animatronicChosen = 6
	{
	    if !instance_exists(obj_bbgame)
	    {
	        instance_create(0,0,obj_bbgame);
	    }
	    htme_globalSet("bbLocation",0,buffer_u8);
	}
}