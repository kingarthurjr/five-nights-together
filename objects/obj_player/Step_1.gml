/// @description ADD VARIABLES TO THE ENGINE

///Input Variables
if (htme_isLocal()) 
{
    /** WRITES THE INPUTS FOR THE LOCAL PLAYER! These will be sent to all
      * other players as configured in the create event.
      *
      * Instead of check_pressed we use check for the jump, 
      * because the pressed frames could get lost due to network lagg 
      * which can cause desync and we don't want to use SMART or IMPORTANT
      * (see manual) packets here, because this needs to be fast!
      * This also means, our players can fly.
      * If you need keyboard_check_pressed sync keyboard_check instead and 
      * built your own function that simulates the pressed functions. 
      */
    
	if self.stopMoving = false
	{
	    self.pressed_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
		self.pressed_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
		self.pressed_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
	    self.pressed_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	}
    
	/** THIS SYNCS THE VARIABLES WITH THE ENGINE
	* Add every variable synced via mp_add here!
	* DO NOT JUST DO THIS FOR THE LOCAL PLAYER! Do it for all!
	*/
	mp_map_syncIn("name",self.name);
	mp_map_syncIn("skin",self.skin);
	mp_map_syncIn("animatronicChosen",self.animatronicChosen);
	mp_map_syncIn("pressed_left",self.pressed_left);
	mp_map_syncIn("pressed_up",self.pressed_up);
	mp_map_syncIn("pressed_down",self.pressed_down);
	mp_map_syncIn("pressed_right",self.pressed_right);
	mp_map_syncIn("special",self.special);
}

///Lighting
collision = false;