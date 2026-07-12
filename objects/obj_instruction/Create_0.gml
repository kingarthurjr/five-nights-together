// --- Card Content (Children will override these) ---
title = "NO TITLE";
icon = 0;
description = "Someone forgot to code this instruction card.";
color = c_black;

// --- Card Dimensions ---
card_width = 640;
card_height = 600;

// --- Surfaces ---
blur_surf = -1;
card_surf = -1;

// --- FADE SETTINGS ---
card_alpha = 0;        // Starts completely transparent
fade_speed = 0.08;     // Adjust this to change fade speed (0.05 is slower, 0.2 is instant)

if instance_exists(obj_player)
{
	obj_player.stopMoving = true;
}