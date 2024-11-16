image_index = irandom(3);
if random(1) > 0.7 {
    alarm[0] = 10;
} else {
    alarm[0] = lerp(30, 400, scr_sinein(random(1)));
}
var range = 100;
x += choose(-1,1) * scr_sinein(random(.8)) * range;
y += choose(-1,1) * scr_sinein(random(.8)) * range;
alarm[1] = 6;