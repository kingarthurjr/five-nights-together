index += 1;
if index >= array_length(camera_list)
{
    index = 0; // Loop back to the start
}
htme_globalSet("camera",camera_list[index],buffer_s8);