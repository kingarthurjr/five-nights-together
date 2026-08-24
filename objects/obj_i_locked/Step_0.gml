/// @description No fade, no dismiss

// Tick the timer down every frame
keepAlive -= 1;

// If a door didn't reset the timer this frame, the player stepped away.
if (keepAlive <= 0)
{
    instance_destroy();
}