/// @description htme_syncSingleVarGroup(group,target)
/// @param group
/// @param target
function htme_syncSingleVarGroup(argument0, argument1) {

	/*
	**  Description:
	**      PRIVATE "METHOD" OF obj_htme! That means this script MUST be called with obj_htme!
	**
	**      Forces the sync of a single variable group of an instance
	**      Only use internally
	**
	**  Arguments:
	**      group     ds_map            vargroup to sync
	**      target    string/real       playerhash to send to or real "all" for all
	**                                  (Client will always send to server)
	*/

	var group = argument0;
	var target = argument1;

	// Make absolutely sure the group itself is valid.
	if (is_undefined(group) || !ds_exists(group, ds_type_map))
	{
		htme_debugger(
			"htme_syncSingleVarGroup",
			htme_debug.WARNING,
			"Tried to sync an invalid var-group."
		);
		exit;
	}

	// Check if we actually know who we are.
	if (!self.isServer && self.playerhash == "")
	{
		htme_debugger(
			"htme_syncSingleVarGroup",
			htme_debug.INFO,
			"Tried to send vargroup but we are not continuing: We don't have a playerhash yet."
		);
		exit;
	}

	/** RETRIEVE INFORMATION **/

	var inst_hash = group[? "instancehash"];
	var inst = group[? "instance"];

	var inst_groups = undefined;
	var inst_object = undefined;
	var inst_player = undefined;
	var inst_stayAlive = undefined;

	if (instance_exists(inst))
	{
		inst_groups = inst.htme_mp_groups;
		inst_object = inst.htme_mp_object;
		inst_player = inst.htme_mp_player;
		inst_stayAlive = inst.htme_mp_stayAlive;
	}
	else if (self.isServer)
	{
		var backupEntry = ds_map_find_value(self.serverBackup, inst_hash);

		// Missing backup means the network group is stale.
		if (is_undefined(backupEntry) || !ds_exists(backupEntry, ds_type_map))
		{
			if (is_undefined(inst_hash) || is_undefined(group[? "name"]))
			{
				htme_debugger(
					"htme_syncSingleVarGroup",
					htme_debug.WARNING,
					"CORRUPTED VARGROUP! CONTENTS: " + json_encode(group)
				);
			}
			else
			{
				htme_debugger(
					"htme_syncSingleVarGroup",
					htme_debug.WARNING,
					"Could not sync var-group " +
					string(group[? "name"]) +
					" of instance " +
					string(inst_hash) +
					". MISSING BACKUP ENTRY!"
				);
			}

			exit;
		}

		inst_groups = backupEntry[? "groups"];
		inst_object = backupEntry[? "object"];
		inst_player = backupEntry[? "player"];
		inst_stayAlive = backupEntry[? "stayAlive"];
	}
	else
	{
		if (is_undefined(inst_hash) || is_undefined(group[? "name"]))
		{
			htme_debugger(
				"htme_syncSingleVarGroup",
				htme_debug.WARNING,
				"CORRUPTED VARGROUP! CONTENTS: " + json_encode(group)
			);
		}
		else
		{
			htme_debugger(
				"htme_syncSingleVarGroup",
				htme_debug.WARNING,
				"Could not sync var-group " +
				string(group[? "name"]) +
				" of instance " +
				string(inst_hash) +
				". MISSING INSTANCE!"
			);
		}

		exit;
	}

	// A group without a valid owner must never be serialized.
	if (!is_string(inst_player) || inst_player == "")
	{
		htme_debugger(
			"htme_syncSingleVarGroup",
			htme_debug.WARNING,
			"Could not sync var-group " +
			string(group[? "name"]) +
			" of instance " +
			string(inst_hash) +
			". INVALID PLAYER OWNER!"
		);
		exit;
	}

	/** GET ROOM OF PLAYER THAT CONTROLS INSTANCE **/

	var inst_room = -1;

	if (self.isServer)
	{
		var port_ip_player = htme_ds_map_find_key(self.playermap, inst_player);

		if (!is_undefined(port_ip_player))
		{
			inst_room = ds_map_find_value(self.playerrooms, port_ip_player);

			if (is_undefined(inst_room))
			{
				inst_room = -1;
			}
		}
	}
	else
	{
		inst_room = room;
	}

	//============================================================
	// DO NOT SERIALIZE INSTANCES THE TARGET CANNOT SEE
	//============================================================

	if (self.isServer && !is_real(target))
	{
		if (target != inst_player)
		{
			if (
				!htme_serverPlayerIsInRoom(target, inst_room)
				&& !htme_isStayAlive(inst_hash)
			)
			{
				exit;
			}
		}
	}

	/** MAKE SURE THE NETWORK BUFFER EXISTS **/

	var syncBuffer = self.buffer;

	if (is_undefined(syncBuffer) || !buffer_exists(syncBuffer))
	{
		syncBuffer = buffer_create(256, buffer_grow, 1);
		self.buffer = syncBuffer;
	}

	buffer_seek(syncBuffer, buffer_seek_start, 0);

	/** PACKET INSTANCE_VARGROUP
	 * s8 -> id
	 * string -> instance hash
	 * string -> player hash
	 * u16 -> room
	 * string -> groupname
	 * u16 -> object
	 * bool -> stayAlive
	 * f32 -> tolerance
	 * u16 -> datatype
	 * u8 -> Number of vars
	 * {
	 *   string -> var_name
	 *   datatype -> value
	 * }
	 */

	// Header
	buffer_write(syncBuffer, buffer_s8, htme_packet.INSTANCE_VARGROUP);

	// Instance hash
	buffer_write(syncBuffer, buffer_string, inst_hash);

	// Player
	buffer_write(syncBuffer, buffer_string, inst_player);

	// Room
	if (use_string_as_id = false)
	{
		buffer_write(syncBuffer, buffer_u16, inst_room);
	}
	else
	{
		if (inst_room >= 0 && inst_room < room_count)
		{
			buffer_write(syncBuffer, buffer_string, room_get_name(inst_room));
		}
		else
		{
			buffer_write(syncBuffer, buffer_string, "");
		}
	}

	// Group name
	buffer_write(syncBuffer, buffer_string, group[? "name"]);

	// Object ID
	if (use_string_as_id = false)
	{
		buffer_write(syncBuffer, buffer_u16, inst_object);
	}
	else
	{
		buffer_write(syncBuffer, buffer_string, object_get_name(inst_object));
	}

	// Stay alive
	buffer_write(syncBuffer, buffer_bool, inst_stayAlive);

	// Tolerance
	buffer_write(syncBuffer, buffer_f32, group[? "tolerance"]);

	// Datatype
	buffer_write(syncBuffer, buffer_u16, group[? "datatype"]);

	/** SERVER / CLIENT VARIABLE DATA **/

	if (self.isServer && inst_player != self.playerhash)
	{
		if (!htme_serverSyncSingleVarGroup(group, syncBuffer))
		{
			exit;
		}
	}
	else
	{
		if (!htme_clientSyncSingleVarGroup(group, syncBuffer))
		{
			exit;
		}
	}

	/** CHECK TYPE OF DELIVERY **/

	if (
		group[? "type"] == mp_type.IMPORTANT
		|| group[? "type"] == mp_type.SMART
	)
	{
		// Send via signed
		if (self.isServer)
		{
			if (is_real(target))
			{
				var port_ip_player = htme_ds_map_find_key(self.playermap, inst_player);

				if (!htme_isStayAlive(inst_hash))
				{
					htme_sendNewSignedPacket(
						syncBuffer,
						all,
						port_ip_player,
						inst_room
					);
				}
				else
				{
					htme_sendNewSignedPacket(
						syncBuffer,
						all,
						port_ip_player
					);
				}
			}
			else if (target != inst_player)
			{
				if (
					htme_serverPlayerIsInRoom(target, inst_room)
					|| htme_isStayAlive(inst_hash)
				)
				{
					htme_sendNewSignedPacket(
						syncBuffer,
						target
					);
				}
			}
		}
		else
		{
			htme_sendNewSignedPacket(syncBuffer, noone);
		}
	}
	else
	{
		// Send normally
		if (self.isServer)
		{
			if (is_real(target))
			{
				var port_ip_player = htme_ds_map_find_key(self.playermap, inst_player);

				if (!htme_isStayAlive(inst_hash))
				{
					htme_serverSendBufferToAllExcept(
						syncBuffer,
						port_ip_player,
						inst_room
					);
				}
				else
				{
					htme_serverSendBufferToAllExcept(
						syncBuffer,
						port_ip_player
					);
				}
			}
			else if (target != inst_player)
			{
				if (
					htme_serverPlayerIsInRoom(target, inst_room)
					|| htme_isStayAlive(inst_hash)
				)
				{
					var ip = htme_playerMapIP(target);
					var port = htme_playerMapPort(target);

					network_send_udp(
						self.socketOrServer,
						ip,
						port,
						syncBuffer,
						buffer_tell(syncBuffer)
					);
				}
			}
		}
		else
		{
			network_send_udp(
				self.socketOrServer,
				self.server_ip,
				self.server_port,
				syncBuffer,
				buffer_tell(syncBuffer)
			);
		}
	}
}