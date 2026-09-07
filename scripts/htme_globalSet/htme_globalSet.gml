/// @description htme_globalSet(name,value,datatype);
/// @param name
/// @param value
/// @param datatype
function htme_globalSet(argument0, argument1, argument2) {

	/*
	**  Description:
	**      Stores a real or string value in the global sync list.
	**      Use buffer_type to define the type of the variable
	**      The global sync list is a list of global variables that can be retrived
	**      via htme_globalGet. They get synced between all clients and servers
	**      and be read and written by any (unlike instance variables which are
	**      read-only for all but the creator).
	**      Make sure the player is connected or a server is running!
	**      NOTE: Using this command will sync this variable immediately via SMART
	**  
	**  Usage:
	**      <see above>
	**
	**  Arguments:
	**      name        string        The name of the variable
	**      value       real/string   The (new) value of the variable you want to
	**                                store
	**      datatype    real          See mp_add
	**
	**  Returns:
	**      <nothing>
	**
	*/

    var name = argument0;
    var value = argument1;
    var datatype = argument2;

    htme_debugger(
        "htme_globalSet",
        htme_debug.DEBUG,
        "Global Sync: Setting " + name + " to " + string(value)
    );

    with (global.htme_object)
    {
        // Check whether this variable already exists.
        var alreadyExists = ds_map_exists(self.globalsync, name);

        var oldValue = undefined;
        var oldDatatype = undefined;

        if (alreadyExists)
        {
            oldValue = ds_map_find_value(self.globalsync, name);
            oldDatatype = ds_map_find_value(self.globalsync_datatypes, name);
        }

        // Always update the local global-sync state.
        ds_map_replace(self.globalsync, name, value);
        ds_map_replace(self.globalsync_datatypes, name, datatype);

        // If neither the value nor its datatype changed,
        // there is nothing to send over the network.
        if (alreadyExists && oldValue == value && oldDatatype == datatype)
        {
            return;
        }

        // The value or datatype actually changed, so synchronize it.
        if (self.isServer)
        {
            htme_sendGS(all, name);
        }
        else
        {
            htme_sendGS(noone, name);
        }
    }
}