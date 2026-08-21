draw_self();
draw_set_font(fnt_fnaf10);
draw_set_colour(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

if global.extras = 1
{
    if obj_extras_animatronics.image_index = 0
    {
        draw_text(886,30,"Freddy");
    }
    if obj_extras_animatronics.image_index = 1
    {
        draw_text(886,30,"Bonnie");
    }
    if obj_extras_animatronics.image_index = 2
    {
        draw_text(886,30,"Chica");
    }
    if obj_extras_animatronics.image_index = 3
    {
        draw_text(886,30,"Foxy");
    }
    if obj_extras_animatronics.image_index = 4
    {
        draw_text(886,30,"The Puppet");
    }
    if obj_extras_animatronics.image_index = 5
    {
        draw_text(886,30,"Springtrap");
    }
    if obj_extras_animatronics.image_index = 6
    {
        draw_text(886,30,"The Mimic");
    }
	if obj_extras_animatronics.image_index = 7
    {
        draw_text(886,30,"Toy Freddy");
    }
    if obj_extras_animatronics.image_index = 8
    {
        draw_text(886,30,"Toy Bonnie");
    }
    if obj_extras_animatronics.image_index = 9
    {
        draw_text(886,30,"Toy Chica");
    }
    if obj_extras_animatronics.image_index = 10
    {
        draw_text(886,30,"The Mangle");
    }
	if obj_extras_animatronics.image_index = 11
    {
        draw_text(886,30,"Withered Freddy");
    }
    if obj_extras_animatronics.image_index = 12
    {
        draw_text(886,30,"Withered Bonnie");
    }
    if obj_extras_animatronics.image_index = 13
    {
        draw_text(886,30,"Withered Chica");
    }
    if obj_extras_animatronics.image_index = 14
    {
        draw_text(886,30,"Withered Foxy");
    }
}
if global.extras = 2
{
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_freddy
    {
        draw_text(886,30,"Freddy");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_bonnie
    {
        draw_text(886,30,"Bonnie");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_chica
    {
        draw_text(886,30,"Chica");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_foxy
    {
        draw_text(886,30,"Foxy");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_puppet
    {
        draw_text(886,30,"The Puppet");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_springtrap
    {
        draw_text(886,30,"Springtrap");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_mimic
    {
        draw_text(886,30,"The Mimic");
    }
	if obj_extras_jumpscares.sprite_index = spr_jumpscare_tfreddy
    {
        draw_text(886,30,"Toy Freddy");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_tbonnie
    {
        draw_text(886,30,"Toy Bonnie");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_tchica
    {
        draw_text(886,30,"Toy Chica");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_mangle
    {
        draw_text(886,30,"The Mangle");
    }
	if obj_extras_jumpscares.sprite_index = spr_jumpscare_wfreddy
    {
        draw_text(886,30,"Withered Freddy");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_wbonnie
    {
        draw_text(886,30,"Withered Bonnie");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_wchica
    {
        draw_text(886,30,"Withered Chica");
    }
    if obj_extras_jumpscares.sprite_index = spr_jumpscare_wfoxy
    {
        draw_text(886,30,"Withered Foxy");
    }
}
if global.extras = 3
{
    if obj_extras_drawings.image_index = 0
    {
        draw_text(886,30,"Donut");
    }
    if obj_extras_drawings.image_index = 1
    {
        draw_text(886,30,"MsTrashcan");
    }
    if obj_extras_drawings.image_index = 2
    {
        draw_text(886,30,"EmeraldBiscuit");
    }
    if obj_extras_drawings.image_index = 3
    {
        draw_text(886,30,"GamerStudios");
    }
    if obj_extras_drawings.image_index = 4
    {
        draw_text(886,30,"MysticMitsuki");
    }
    if obj_extras_drawings.image_index = 5
    {
        draw_text(886,30,"JeffTonic");
    }
    if obj_extras_drawings.image_index = 6
    {
        draw_text(886,30,"Lav4_Ravg");
    }
    if obj_extras_drawings.image_index = 7
    {
        draw_text(886,30,"SSJ4 Luigi");
    }
    if obj_extras_drawings.image_index = 8
    {
        draw_text(886,30,"UniversGenome");
    }
    if obj_extras_drawings.image_index = 9
    {
        draw_text(886,30,"ryan.");
    }
    if obj_extras_drawings.image_index = 10
    {
        draw_text(886,30,"StormySkies");
    }
    if obj_extras_drawings.image_index = 11
    {
        draw_text(886,30,"Hako");
    }
    if obj_extras_drawings.image_index = 12
    {
        draw_text(886,30,"Padikuz");
    }
    if obj_extras_drawings.image_index = 13
    {
        draw_text(886,30,"staranimatez");
    }
    if obj_extras_drawings.image_index = 14
    {
        draw_text(886,30,"Me (For Dawko)");
    }
    if obj_extras_drawings.image_index = 15
    {
        draw_text(886,50,"Me#(For Buff Helpy)");
    }
    if obj_extras_drawings.image_index = 16
    {
        draw_text(886,50,"Me#(For MatPat)");
    }
    if obj_extras_drawings.image_index = 17
    {
        draw_text(886,50,"Me (For Scott)");
    }
}
if global.extras = 4
{
    if obj_extras_office.image_index = 0
    {
        draw_text(886,30,"Office V1");
    }
    if obj_extras_office.image_index = 1
    {
        draw_text(886,30,"Office V2");
    }
    if obj_extras_office.image_index = 2
    {
        draw_text(886,50,"Office V3#(Help Wanted)");
    }
    if obj_extras_office.image_index = 3
    {
        draw_text(886,50,"Office V4#(Ultimate FNaF Model Pack)");
    }
	if obj_extras_office.image_index = 4
    {
        draw_text(886,50,"Office Final#(FNaF1 Ultimate Session Pack)");
    }
}
if global.extras = 5
{
    if obj_extras_helpi.image_index = 0
    {
        draw_text(886,30,"Sketch 1");
    }
    if obj_extras_helpi.image_index = 1
    {
        draw_text(886,30,"Final 1");
    }
    if obj_extras_helpi.image_index = 2
    {
        draw_text(886,30,"Sketch 2");
    }
    if obj_extras_helpi.image_index = 3
    {
        draw_text(886,30,"Final 2");
    }
}
else
{
    draw_text(0,0,"");
}