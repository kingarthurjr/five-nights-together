application_surface_draw_enable(true);

if (variable_instance_exists(id, "light_surface"))
{
    if (surface_exists(light_surface))
    {
        surface_free(light_surface);
    }
}
if (variable_instance_exists(id, "ui_surface"))
{
    if (surface_exists(ui_surface))
    {
        surface_free(ui_surface);
    }
}