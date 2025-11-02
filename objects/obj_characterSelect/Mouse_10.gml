obj_characterInfo.current = animNumber;
if htme_globalGet(animatronic+"Taken") = "noone"
{
	if animNumber > 7 and animNumber < 16
	{
		instance_create(x,y,obj_cs_up).animNum = animNumber;
		instance_create(x,y,obj_cs_down).animNum = animNumber;
		instance_create(x,y,obj_cs_arrows);
	}
}