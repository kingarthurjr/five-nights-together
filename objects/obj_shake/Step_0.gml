// Calculate random displacements for the camera
randomize();
var shake_x = choose(-8, 8);
var shake_y = choose(-8, 8);

// Apply the displacements to the view position
view_xview[0] += shake_x;
view_yview[0] += shake_y;