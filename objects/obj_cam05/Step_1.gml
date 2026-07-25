//Is there an animatronic in the room?
bonnieSpecial = false;
if scr_cam_isEmpty(14)
{
	current = false; //No
	if (htme_globalGet("bonnie") = 14 or htme_globalGet("wbonnie") = 14 or htme_globalGet("mimic") = 14) and htme_globalGet("bonnieSpecial") = 1
	{
		bonnieSpecial = true;
	}
}
else
{
	current = true; //Yes
}