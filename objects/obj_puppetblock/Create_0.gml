depth = -7;
//Create Puppet Head
instance_create(0,0,obj_puppetstare);
//Set Variables for Phantom Flash
fade_alpha = 0; // Start fully transparent
fade_direction = 1; // 1 = fade in, -1 = fade out
fade_speed = 1 / 6; // Since we have 6 frames, each step should be 1/6