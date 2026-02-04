x = obj_minimap2.x;
y = obj_minimap2.y;
blur = obj_minimap2.blur;


if htme_globalGet("camerasRebooted") > camerasRebooted
{
	instance_destroy();
}