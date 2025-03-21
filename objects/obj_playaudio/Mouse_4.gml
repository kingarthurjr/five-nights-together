if !(htme_globalGet("camera") = htme_globalGet("puppet") and htme_globalGet("puppetSpecial") = 1)
{
    //Play Audio
	randomize();
    audio_play_sound(choose(snd_bb_hello,snd_bb_hi,snd_bb_laugh),10,false);
    
    if htme_globalGet("camera") = 0 //Cam1A
    {
        currentCam = obj_button_cam1a;
    }
    if htme_globalGet("camera") = 3 //Cam1B
    {
        currentCam = obj_button_cam1b;
    }
    if htme_globalGet("camera") = null //Cam1C
    {
        currentCam = obj_button_cam1c;
    }
    if htme_globalGet("camera") = 5 //Cam2A
    {
        currentCam = obj_button_cam2a;
    }
    if htme_globalGet("camera") = 7 //Cam2B
    {
        currentCam = obj_button_cam2b;
    }
    if htme_globalGet("camera") = 10 //Cam3
    {
        currentCam = obj_button_cam3;
    }
    if htme_globalGet("camera") = 6 //Cam4A
    {
        currentCam = obj_button_cam4a;
    }
    if htme_globalGet("camera") = 8 //Cam4B
    {
        currentCam = obj_button_cam4b;
    }
    if htme_globalGet("camera") = 4 //Cam5
    {
        currentCam = obj_button_cam5;
    }
    if htme_globalGet("camera") = 9 //Cam6
    {
        currentCam = obj_button_cam6;
    }
    if htme_globalGet("camera") = 11 //Cam7
    {
        currentCam = obj_button_cam7;
    }
    else
    {
        htme_globalSet("audioLureUsed",1,buffer_bool);
    }
    
    instance_create(currentCam.x,currentCam.y,obj_camsound); //Create the sound visual on the selected camera
	
	//Spawn BB
	if htme_globalGet("bbGame") = 0
    {
        if htme_globalGet("camera") = 11 //Restrooms
        {
            if htme_globalGet("springtrap") = 3
            {
                htme_globalSet("bbLocation",10,buffer_u8);
            }
            htme_globalSet("bathroomLure",1,buffer_bool);
        }
        if htme_globalGet("camera") = 3 //Dining Hall
        {
            if htme_globalGet("springtrap") = 11 or htme_globalGet("springtrap") = 4 or htme_globalGet("springtrap") = 5 or htme_globalGet("springtrap") = 6 or htme_globalGet("springtrap") = 9 or htme_globalGet("springtrap") = 12 or htme_globalGet("springtrap") = null
            {
                randomize();
                htme_globalSet("bbLocation",choose(1,2,3),buffer_u8);
            }
        }
        if htme_globalGet("camera") = 4 //Backstage
        {
            if htme_globalGet("springtrap") = 3
            {
                htme_globalSet("bbLocation",4,buffer_u8);
            }
        }
        if htme_globalGet("camera") = 5 //West Hall
        {
            if htme_globalGet("springtrap") = 3 or htme_globalGet("springtrap") = 7 or htme_globalGet("springtrap") = 10 or htme_globalGet("springtrap") = 1
            {
                htme_globalSet("bbLocation",5,buffer_u8);
            }
        }
        if htme_globalGet("camera") = 10 //Supply Closet
        {
            if htme_globalGet("springtrap") = 5 or htme_globalGet("springtrap") = 7 or htme_globalGet("springtrap") = 1
            {
                htme_globalSet("bbLocation",9,buffer_u8);
            }
        }
        if htme_globalGet("camera") = 7 //West Hall Corner
        {
            if htme_globalGet("springtrap") = 5 or htme_globalGet("springtrap") = 10 or htme_globalGet("springtrap") = 1
            {
                htme_globalSet("bbLocation",7,buffer_u8);
            }
        }
        if htme_globalGet("camera") = 6 //East Hall
        {
            if htme_globalGet("springtrap") = 3 or htme_globalGet("springtrap") = 8 or htme_globalGet("springtrap") = 2
            {
                htme_globalSet("bbLocation",6,buffer_u8);
            }
        }
        if htme_globalGet("camera") = 8 //East Hall Corner
        {
            if htme_globalGet("springtrap") = 6 or htme_globalGet("springtrap") = 2
            {
                htme_globalSet("bbLocation",8,buffer_u8);
            }
        }
        if htme_globalGet("camera") = 9 //Kitchen
        {
            if htme_globalGet("springtrap") = 3
            {
                htme_globalSet("bbLocation",11,buffer_u8);
            }
        }
        if htme_globalGet("camera") = 0 //Stage
        {
            if htme_globalGet("springtrap") = 3
            {
                htme_globalSet("bbLocation",12,buffer_u8);
            }
        }
        if htme_globalGet("camera") = null //Pirate Cove
        {
            if htme_globalGet("springtrap") = 3
            {
                htme_globalSet("bbLocation",13,buffer_u8);
            }
        }
    }
	
	//Replace Button with Cooldown
	instance_create(0,0,obj_audiocooldown); 
    instance_create(442,418,obj_buttonload); //Create the loading dots
    instance_destroy(); //Destroy the button
}
else
{
    audio_play_sound(snd_doorror,10,false);
}