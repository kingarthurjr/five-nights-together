/// @description Insert description here
// You can write your code in this editor

if random(1) > 0.7 {
    alarm[0] = 10;
} else {
    alarm[0] = lerp(30, 400, scr_sinein(random(1)));
}
var range = 100;
blur += choose(-1,1) * scr_sinein(random(.8)) * range;
alarm[1] = 6;