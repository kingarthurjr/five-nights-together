draw_texture_flush();
alarm[0] = 5;

if global.mobile = false
{
    randomfact = irandom_range(1,12);
}
else
{
    randomfact = irandom_range(1,11);
}

if randomfact == 1
{
    fazfact = "Tip: Watch out for the flickering Foxy head on the cameras to know when he's about to make a run for it!";
}
if randomfact == 2
{
    fazfact = "Tip: If Bonnie is looking at the camera, use the BREAK SIGNAL button to stop him from hacking your camera!";
}
if randomfact == 3
{
    fazfact = "Tip: Springtrap won't be fooled if you use the AUDIO LURE in the same room he's in!";
}
if randomfact == 4
{
    fazfact = "Fun Fact: Bonnie is blue.";
}
if randomfact == 5
{
    fazfact = "Tip: Don't look at Freddy when his music box is active!";
}
if randomfact == 6
{
    fazfact = "Tip: Foxy runs to the nearest door. Close it in time to stop him!";
}
if randomfact == 7
{
    fazfact = "Tip: If you don't know which door Foxy is running to, close both!";
}
if randomfact == 8
{
    fazfact = "Tip: The Puppet takes a second to show up on cameras!";
}
if randomfact == 9
{
    fazfact = "Tip: Your monitor will overheat if the building gets too hot!";
}
if randomfact == 10
{
    fazfact = "Tip: The Puppet will hide all interactions when blocking your camera.";
}
if randomfact == 11
{
    fazfact = "Tip: Springtrap will not hear the AUDIO LURE if he has to walk through multiple cameras.";
}
if randomfact == 12
{
    fazfact = "Fun Fact: You can press T to bring up an in-game chat!";
}
if randomfact == 13
{
    fazfact = "This isn't how it happened.";
}
if randomfact == 14
{
    fazfact = "Is it in my head, or am I trapped in its?";
}
if randomfact == 15
{
    fazfact = "Was that me...?";
}
if randomfact == 16
{
    fazfact = "Fun Fact: In early development, Flipside Freddy would constantly appear in places he wasn't supposed to.";
}
if randomfact == 17
{
    fazfact = "Fun Fact: Starting a 1v1 will unlock the BOSS ROSTER.";
}