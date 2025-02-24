/// @description Count and Start

//Count how many have chosen
freddyAmount = 0;

pchosen[1] = htme_globalGet("freddyTaken");
pchosen[2] = htme_globalGet("bonnieTaken");
pchosen[3] = htme_globalGet("chicaTaken");
pchosen[4] = htme_globalGet("foxyTaken");
pchosen[5] = htme_globalGet("puppetTaken");
pchosen[6] = htme_globalGet("springtrapTaken");

for(var i = 1; i <= 6; i++) 
{
    if pchosen[i] != "noone"
    {
        freddyAmount += 1; //Count how many are ready
    }
}

htme_globalSet("freddyAmount",freddyAmount,buffer_u8); //Send count to the server

//Start Game
if htme_globalGet("freddyAmount") = (ds_list_size(htme_getPlayers()) - 1) and global.animatronicChosen != 0
{
    if !instance_exists(obj_startcountdown)
    {
        instance_create_layer(0,0,"Instances_1",obj_startcountdown);
    }
}
else
{
    if instance_exists(obj_startcountdown)
    {
        instance_destroy(obj_startcountdown);
    }
}