if (selected)
{
    color = c_red;
	if (keyboard_key != vk_nokey)
	{
        var _new_key = keyboard_key;
        
        // 1. CANCEL FEATURE: If they press Escape, cancel the rebind
        if (_new_key == vk_escape)
		{
            selected = false;
            global.is_rebinding = false; // Unlock the other buttons
            keyboard_clear(keyboard_key);
            exit; // Stop running the rest of this code
        }
        
        // 2. DUPLICATE CHECK: Ask all other keybind objects if they use this key
        var _is_duplicate = false;
        
        with (obj_options_keybind)
		{
            // If this is NOT the button I'm currently clicking AND the key matches...
            if (id != other.id && current_val == _new_key)
			{
                _is_duplicate = true;
            }
        }
        
        // 3. ASSIGN OR REJECT
        if (_is_duplicate)
		{
            // Reject it! It clears the input and keeps waiting for a valid key.
            // (Optional: You could play an error 'buzz' sound effect here)
            keyboard_clear(keyboard_key);
			audio_play_sound(snd_doorror,10,false);
        } 
        else
		{
            // Accept it! Apply the new key.
            current_val = _new_key;
            
            if (global_var_name != "")
			{
                variable_global_set(global_var_name,_new_key);
            }
            audio_play_sound(snd_confirm,10,false);
			
            // Turn off selection mode and unlock other buttons
            selected = false;
            global.is_rebinding = false; 
            keyboard_clear(keyboard_key);
			color = c_white;
        }
    }
}