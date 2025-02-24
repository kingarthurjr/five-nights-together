//Check if password has been created
if (is_undefined(htme_globalGet("password")))
{
	htme_globalSet("password",keyboard_string,buffer_string); //Create Password
	global.password = true;
	room_goto(htme_rom_connecting);
}
else //If it has, make sure it is correct
{
	if keyboard_string = htme_globalGet("password")
	{
		global.password = true;
		room_goto(htme_rom_connecting);
	}
	else
	{
		audio_play_sound(snd_doorror,10,false);
		keyboard_string = "";
	}
}