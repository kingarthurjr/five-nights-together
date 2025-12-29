depth = -9999;
image_alpha = 0;
audio_stop_all();
audio_play_sound(mus_6am,10,false,.5);
alarm[0] = room_speed*5;

if instance_exists(obj_static)
{
    instance_destroy(obj_static);
}
if instance_exists(obj_guardUI1)
{
    instance_destroy(obj_guardUI1);
}