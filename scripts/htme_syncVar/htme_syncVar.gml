/// @description htme_syncVar(buffer,group,datatype,newval,varname,prevSyncMap,[addName]);
/// @param buffer
/// @param group
/// @param datatype
/// @param newval
/// @param varname
/// @param prevSyncMap
/// @param [addName]
function htme_syncVar() {

	/*
	**  Description:
	**      PRIVATE "METHOD" OF obj_htme! That means this script MUST be called with obj_htme!
	*/

	var buffer = argument[0];
	var group = argument[1];
	var datatype = argument[2];
	var newval = argument[3];
	var varname = argument[4];
	var prevSyncMap = argument[5];

	var addName = false;

	if (argument_count > 6)
	{
		addName = argument[6];
	}

	// NEVER allow buffer_write to receive a bad buffer.
	if (is_undefined(buffer))
	{
		show_debug_message(
			"GMNET ERROR: htme_syncVar received UNDEFINED buffer" +
			" | var=" + string(varname) +
			" | datatype=" + string(datatype) +
			" | newval=" + string(newval)
		);

		return 0;
	}

	if (!buffer_exists(buffer))
	{
		show_debug_message(
			"GMNET ERROR: htme_syncVar received INVALID buffer" +
			" | var=" + string(varname) +
			" | datatype=" + string(datatype) +
			" | newval=" + string(newval)
		);

		return 0;
	}

	if (is_undefined(group) || !ds_exists(group, ds_type_map))
	{
		return 0;
	}

	if (
		is_undefined(prevSyncMap)
		|| !ds_exists(prevSyncMap, ds_type_map)
	)
	{
		return 0;
	}

	if (self.syncForce || group[? "type"] != mp_type.SMART)
	{
		// Simply add

		if (addName)
		{
			buffer_write(
				buffer,
				buffer_string,
				varname
			);
		}
		else
		{
			buffer_write(
				buffer,
				buffer_bool,
				true
			);
		}

		// Do not allow an undefined value to reach buffer_write either.
		if (is_undefined(newval))
		{
			return 0;
		}

		buffer_write(
			buffer,
			datatype,
			newval
		);

		ds_map_replace(
			prevSyncMap,
			varname,
			newval
		);

		return 1;
	}
	else
	{
		// This map contains the variables as they were last synced.
		var oldval = ds_map_find_value(
			prevSyncMap,
			varname
		);

		var toleranceCheck = true;

		if (
			!is_undefined(newval)
			&& (
				is_undefined(oldval)
				|| (
					oldval != newval
					&& toleranceCheck
				)
			)
		)
		{
			if (addName)
			{
				buffer_write(
					buffer,
					buffer_string,
					varname
				);
			}
			else
			{
				buffer_write(
					buffer,
					buffer_bool,
					true
				);
			}

			buffer_write(
				buffer,
				datatype,
				newval
			);

			ds_map_replace(
				prevSyncMap,
				varname,
				newval
			);

			return 1;
		}
	}

	if (!addName)
	{
		buffer_write(
			buffer,
			buffer_bool,
			false
		);
	}

	return 0;
}