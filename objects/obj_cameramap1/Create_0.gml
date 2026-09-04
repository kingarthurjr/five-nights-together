//Depth
depth = -20;

//Camera Buttons
instance_create(657,135,obj_button_cam1a);
instance_create(637,191,obj_button_cam1b);
instance_create(605,269,obj_button_cam1c);
instance_create(657,386,obj_button_cam2a);
instance_create(657,427,obj_button_cam2b);
instance_create(573,368,obj_button_cam3);
instance_create(763,386,obj_button_cam4a);
instance_create(763,427,obj_button_cam4b);
instance_create(531,219,obj_button_cam5);
instance_create(860,351,obj_button_cam6);
instance_create(870,219,obj_button_cam7);

//Keyboard Order
camera_list = [0, 3, null, 5, 7, 10, 6, 8, 4, 9, 11];
index = 0;

/*
0 = Stage
1 = Left Office
2 = Right Office
3 = Dining Room
4 = Backstage
5 = West Hall
6 = East Hall
7 = W. Hall Corner
8 = E. Hall Corner
9 = Kitchen
10 = Supply Closet
11 = Restrooms
*/