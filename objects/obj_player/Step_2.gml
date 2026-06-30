/// @description Insert description here
// You can write your code in this editor

if !(htme_isLocal())
{
    self.name = mp_map_syncOut("name",self.name);
	self.skin = mp_map_syncOut("skin",self.skin);
	self.animatronicChosen = mp_map_syncOut("animatronicChosen",self.animatronicChosen);
    self.pressed_left = mp_map_syncOut("pressed_left",self.pressed_left);
	self.pressed_up = mp_map_syncOut("pressed_up",self.pressed_up);
	self.pressed_down = mp_map_syncOut("pressed_down",self.pressed_down);
    self.pressed_right = mp_map_syncOut("pressed_right",self.pressed_right);
	self.special = mp_map_syncOut("special",self.special);
}

///Lighting
/*
fade = 0 (do nothing)
fade = 1 (fade out)
fade = 2 (fade in)
*/

if collision = true and darkness = 1
{
    fade = 1;
}
if collision = false and darkness = 0
{
    fade = 2;
}