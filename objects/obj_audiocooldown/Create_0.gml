loading = 0;

if ds_list_size(htme_getPlayers()) > 3
{
    loadtime = 60;
}
else
{
    loadtime = 120;
}

alarm[0] = loadtime;