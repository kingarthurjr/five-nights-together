if htme_globalGet("mapSelected") != 0 //FNaF1
{
	x = obj_minimap1.x
	y = obj_minimap1.y
}
if htme_globalGet("mapSelected") != 1 //FNaF2
{
	x = obj_minimap2.x
	y = obj_minimap2.y
}
draw_self();