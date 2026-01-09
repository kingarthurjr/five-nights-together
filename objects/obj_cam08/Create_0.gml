/// @description Parts and Service

x = global.camMoveX;

//Create Animatronics in Draw Order
instance_create(0,0,obj_partsandservice_springtrap);
instance_create(0,0,obj_partsandservice_tfreddy);
instance_create(0,0,obj_partsandservice_wfreddy);
instance_create(0,0,obj_partsandservice_tbonnie);
instance_create(0,0,obj_partsandservice_wbonnie);
instance_create(0,0,obj_partsandservice_tchica);
instance_create(0,0,obj_partsandservice_wchica);
instance_create(0,0,obj_partsandservice_mangle);
instance_create(0,0,obj_partsandservice_wfoxy);
instance_create(0,0,obj_partsandservice_mimic);

//Create Oven Access
instance_create_layer(38,195,"Buttons",obj_ovenaccess);