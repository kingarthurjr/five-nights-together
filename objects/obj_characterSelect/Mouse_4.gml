if global.clickable = true
{
	if htme_globalGet(animatronic+"Taken") = "noone" //If Freddy isn't taken
	{
	    if obj_characterInfo.amountSelected = 0 //And you haven't chosen anyone
	    {
	        htme_globalSet(animatronic+"Taken",global.name,buffer_string);
			audio_play_sound(snd_blip,10,false);
	        image_index = 1;
	        obj_characterInfo.amountSelected = 1;
	        global.animatronicChosen = animNumber;
			global.animatronicName = animatronic;
			show_debug_message(animatronic+"Taken has been set to "+htme_globalGet(animatronic+"Taken"));
		
			//Destroy Skin Select Arrows
			if instance_exists(obj_cs_up)
			{
				instance_destroy(obj_cs_up);
			}
			if instance_exists(obj_cs_down)
			{
				instance_destroy(obj_cs_down);
			}
	    }
	}
	else
	{
		if htme_globalGet(animatronic+"Taken") = global.name //If Freddy is taken BY you
		{
		    audio_play_sound(snd_blip,10,false);
		    image_index = 0;
		    obj_characterInfo.amountSelected = 0;
		    htme_globalSet(animatronic+"Taken","noone",buffer_string);
			if animNumber > 7 and animNumber < 16
			{
				instance_create(x,y,obj_cs_up).animNum = animNumber;
				instance_create(x,y,obj_cs_down).animNum = animNumber;
			}
		}
	}
}