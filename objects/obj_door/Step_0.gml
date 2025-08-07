if (!collision) // Use the negation operator to check if collision is false
{
    if instance_exists(obj_instructions_locked)
    {
        instance_destroy(obj_instructions_locked);
    }
}