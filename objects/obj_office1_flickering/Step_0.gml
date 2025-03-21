if instance_exists(obj_office1) or instance_exists(obj_office1_left_closed) or instance_exists(obj_office1_right_closed)
{
    image_index = 0;
}
if instance_exists(obj_office1_leftturn)
{
    image_index = 1;
}
if instance_exists(obj_office1_right)
{
    image_index = 2;
}
if instance_exists(obj_office1_leftturn) or instance_exists(obj_office1_rightturn)
{
    image_alpha = 0;
}