draw_texture_flush();

randomize();
secret = irandom_range(1,100);
randomfact = irandom_range(1,14);

if secret <= 2
{
	randomfact = irandom_range(1,3);

	if randomfact == 1
	{
	    fazfact = "This isn't how it happened.";
	}

	if randomfact == 2
	{
	    fazfact = "Why does the mask work on Foxy...?";
	}

	if randomfact == 3
	{
	    fazfact = "Is it in my head, or am I trapped in its?";
	}
}
else
{
	if randomfact == 1
	{
	    fazfact = "Tip: Watch out for the flickering Foxy head on the cameras to know when he's about to make a run for it!";
	}

	if randomfact == 2
	{
	    fazfact = "Tip: If Bonnie is looking at the camera, use the BREAK SIGNAL button to stop him from hacking your camera!";
	}

	if randomfact == 3
	{
	    fazfact = "Tip: Springtrap won't be fooled if you use the AUDIO LURE in the same room he's in!";
	}

	if randomfact == 4
	{
	    fazfact = "Fun Fact: Bonnie is blue.";
	}

	if randomfact == 5
	{
	    fazfact = "Tip: Don't look at Freddy when his music box is active!";
	}

	if randomfact == 6
	{
	    fazfact = "Tip: Foxy runs to the nearest door. Close it in time to stop him!";
	}

	if randomfact == 7
	{
	    fazfact = "Tip: If you don't know which door Foxy is running to, close both!";
	}

	if randomfact == 8
	{
	    fazfact = "Tip: The Puppet takes a second to show up on cameras!";
	}

	if randomfact == 9
	{
	    fazfact = "Tip: Your monitor will overheat if the building gets too hot!";
	}

	if randomfact == 10
	{
	    fazfact = "Tip: The Puppet will hide all abilities when blocking your camera.";
	}

	if randomfact == 11
	{
	    fazfact = "Tip: Springtrap will not hear the AUDIO LURE if he has to walk through multiple cameras.";
	}

	if randomfact == 12
	{
	    fazfact = "Fun Fact: In early development, Flipside Freddy would constantly appear in places he wasn't supposed to.";
	}

	if randomfact == 13
	{
	    fazfact = "Fun Fact: Starting a 1v1 will unlock the BOSS ROSTER.";
	}

	if randomfact == 14
	{
	    fazfact = "Tip: Springtrap's groans can be heard when completing his minigame";
	}
}


//==================================================
// INCREMENTAL LOADING SETUP
//==================================================

// Sprites to load
load_list = [];

// Current position in the list
load_index = 0;

// How long we are allowed to spend loading in ONE Step.
// get_timer() is in microseconds.
// 2000 = 2 milliseconds.
//
// If loading is still causing network problems, lower this
// to 1000. If everything is stable and you want faster
// loading, try 3000.
load_budget = 2000;

// Small initial delay so the loading screen has a chance
// to actually appear before the work begins.
load_delay = 5;


//==================================================
// DETERMINE PLAYER ROLE
//==================================================

var is_guard = (htme_globalGet("name[" + string(htme_globalGet("guardSelected")) + "]") = global.name);


//==================================================
// NIGHT GUARD
//==================================================

if is_guard
{
	//------------------------------
	// FNaF 1
	//------------------------------

	if htme_globalGet("mapSelected") = 0
	{
		load_list = [
			spr_office1,
			spr_office1_leftturn,
			spr_office1_leftturn_closed,
			spr_office1_rightturn,
			spr_office1_rightturn_closed,
			spr_office1_left,
			spr_office1_left_door,
			spr_office1_right,
			spr_office1_right_door,
			spr_monitor,
			spr_handunit_up,
			spr_handunit_up_dark,
			spr_handunit,
			spr_switch,
			spr_cameramap1,
			spr_cam1a,
			spr_cam1b,
			spr_cam1c,
			spr_cam2a,
			spr_cam2b,
			spr_cam3,
			spr_cam4a,
			spr_cam4b,
			spr_cam5,
			spr_cam6,
			spr_cam7,
			spr_cam1a_button,
			spr_cam1b_button,
			spr_cam1c_button,
			spr_cam2a_button,
			spr_cam2b_button,
			spr_cam3_button,
			spr_cam4a_button,
			spr_cam4b_button,
			spr_cam5_button,
			spr_cam6_button,
			spr_cam7_button
		];
	}

	//------------------------------
	// FNaF 2
	//------------------------------

	if htme_globalGet("mapSelected") = 1
	{
		load_list = [
			spr_office2,
			spr_office2_leftturn,
			spr_office2_rightturn,
			spr_office2_left,
			spr_office2_right,
			spr_monitor,
			spr_handunit_up,
			spr_handunit_up_dark,
			spr_handunit,
			spr_mask_flip,
			spr_mask,
			spr_switch,
			spr_minimap2,
			spr_cam01,
			spr_cam02,
			spr_cam03,
			spr_cam04,
			spr_cam05,
			spr_cam06,
			spr_cam07,
			spr_cam08,
			spr_cam09,
			spr_cam10,
			spr_cam11,
			spr_cam12,
			spr_cam01_button,
			spr_cam02_button,
			spr_cam03_button,
			spr_cam04_button,
			spr_cam05_button,
			spr_cam06_button,
			spr_cam07_button,
			spr_cam08_button,
			spr_cam09_button,
			spr_cam10_button,
			spr_cam11_button,
			spr_cam12_button,
			spr_office2_animatronics
		];
	}
}


//==================================================
// ANIMATRONIC
//==================================================

else
{
	//------------------------------
	// FNaF 1
	//------------------------------

	if htme_globalGet("mapSelected") = 0
	{
		load_list = [
			spr_icons,
			spr_minimap1,
			spr_minimap1_puppet,
			spr_minimap1_disabled,
			spr_minimap1_springtrap,
			spr_minimap1_saferoom,

			spr_freddy_d,
			spr_freddy_d_special,
			spr_freddy_l,
			spr_freddy_r,
			spr_freddy_u,

			spr_bonnie_d,
			spr_bonnie_l,
			spr_bonnie_r,
			spr_bonnie_u,

			spr_chica_d,
			spr_chica_l,
			spr_chica_r,
			spr_chica_u,

			spr_foxy_d,
			spr_foxy_l,
			spr_foxy_r,
			spr_foxy_u,

			spr_puppet_d,
			spr_puppet_d_special,
			spr_puppet_l,
			spr_puppet_r,
			spr_puppet_u,

			spr_springtrap_d,
			spr_springtrap_l,
			spr_springtrap_r,
			spr_springtrap_u,

			spr_mimic_d,
			spr_mimic_l,
			spr_mimic_r,
			spr_mimic_u,

			spr_table1,
			spr_arcades1,
			spr_tv1,
			spr_tv2,
			spr_shelf,
			spr_backstage1_shelves,
			spr_backstage1_table,
			spr_cove1_curtain,
			spr_cove1_stage,
			spr_door_left1,
			spr_door_right1
		];
	}

	//------------------------------
	// FNaF 2
	//------------------------------

	if htme_globalGet("mapSelected") = 1
	{
		load_list = [
			spr_icons,
			spr_minimap2,
			spr_minimap2_puppet,
			spr_minimap2_disabled,
			spr_minimap2_springtrap,

			spr_tfreddy_d,
			spr_tfreddy_d_special,
			spr_tfreddy_l,
			spr_tfreddy_r,
			spr_tfreddy_u,

			spr_tbonnie_d,
			spr_tbonnie_l,
			spr_tbonnie_r,
			spr_tbonnie_u,

			spr_tchica_d,
			spr_tchica_l,
			spr_tchica_r,
			spr_tchica_u,

			spr_mangle_d,
			spr_mangle_l,
			spr_mangle_r,
			spr_mangle_u,

			spr_wfreddy_d,
			spr_wfreddy_d_special,
			spr_wfreddy_l,
			spr_wfreddy_r,
			spr_wfreddy_u,

			spr_wbonnie_d,
			spr_wbonnie_l,
			spr_wbonnie_r,
			spr_wbonnie_u,

			spr_wchica_d,
			spr_wchica_l,
			spr_wchica_r,
			spr_wchica_u,

			spr_wfoxy_d,
			spr_wfoxy_l,
			spr_wfoxy_r,
			spr_wfoxy_u,

			spr_puppet_d,
			spr_puppet_d_special,
			spr_puppet_l,
			spr_puppet_r,
			spr_puppet_u,

			spr_springtrap_d,
			spr_springtrap_l,
			spr_springtrap_r,
			spr_springtrap_u,

			spr_mimic_d,
			spr_mimic_l,
			spr_mimic_r,
			spr_mimic_u,

			spr_table2,
			spr_table2_side,
			spr_balloons,
			spr_presents,
			spr_vent
		];
	}
}