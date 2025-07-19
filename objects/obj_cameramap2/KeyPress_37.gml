index -= 1;
if index < 0
{
    index = array_length(camera_list) - 1; // Loop to the last item
}
htme_globalSet("camera",camera_list[index],buffer_s8);