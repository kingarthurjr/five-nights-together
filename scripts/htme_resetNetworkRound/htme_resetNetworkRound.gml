// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function htme_resetNetworkRound()
{
    with (global.htme_object)
    {
        if (!self.started || !self.isConnected)
        {
            return;
        }

        show_debug_message(
            "GMNET: RESETTING ROUND NETWORK STATE"
        );

        /*
        ---------------------------------------------------------
        Clear cached reliable/signed packets.
        This is exactly the cleanup GMnet uses during shutdown,
        but we are keeping the actual connection alive.
        ---------------------------------------------------------
        */
        htme_clean_signed_packets("");

        /*
        ---------------------------------------------------------
        Recreate the packet counter maps.

        sPcountOUT:
            cached packets we have sent

        sPcountIN:
            cached packets we are waiting to receive/process

        Resetting these removes packet history from the
        previous round.
        ---------------------------------------------------------
        */
        if (ds_exists(self.sPcountOUT, ds_type_map))
        {
            ds_map_destroy(self.sPcountOUT);
        }

        self.sPcountOUT = ds_map_create();

        if (ds_exists(self.sPcountIN, ds_type_map))
        {
            ds_map_destroy(self.sPcountIN);
        }

        self.sPcountIN = ds_map_create();
    }
}