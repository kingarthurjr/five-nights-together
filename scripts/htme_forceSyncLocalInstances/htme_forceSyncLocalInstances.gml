/// @description htme_forceSyncLocalInstances(playerhash);
/// @param playerhash
function htme_forceSyncLocalInstances(argument0) {

	/*
	**  Description:
	**      PRIVATE "METHOD" OF obj_htme! That means this script MUST be called with obj_htme!
	**
	**      If this is called by a client, it force syncs all variable groups to
	**      the server
	**      If this is run by the server, this force syncs all variable groups
	**      to all clients in the same room
	**
	**  Usage:
	**      <See above>
	**
	**  Arguments:
	**      playerhash  string    the hash of the player
	**
	**  Returns:
	**      <Nothing>
	*/

	var phash = argument0;

	self.syncForce = true;

	htme_debugger(
		"htme_forceSyncLocalInstances",
		htme_debug.DEBUG,
		"Forcing the sync of " + string(phash) + "'s instances."
	);

	for (var i = 0; i < ds_list_size(self.grouplist); i += 1)
	{
		var group = ds_list_find_value(self.grouplist, i);

		// Bad group entry. Do not touch it.
		if (is_undefined(group) || !ds_exists(group, ds_type_map))
		{
			htme_debugger(
				"htme_forceSyncLocalInstances",
				htme_debug.WARNING,
				"Skipping undefined/corrupt var-group."
			);
			continue;
		}

		var inst_hash = group[? "instancehash"];
		var inst = group[? "instance"];

		// IMPORTANT:
		// This must be reset EVERY iteration.
		// Otherwise a broken group can inherit the previous group's player.
		var inst_player = "";

		if (instance_exists(inst))
		{
			inst_player = inst.htme_mp_player;
		}
		else if (self.isServer)
		{
			var backupEntry = ds_map_find_value(self.serverBackup, inst_hash);

			if (!is_undefined(backupEntry) && ds_exists(backupEntry, ds_type_map))
			{
				inst_player = backupEntry[? "player"];
			}
			else
			{
				if (is_undefined(inst_hash) || is_undefined(group[? "name"]))
				{
					htme_debugger(
						"htme_forceSyncLocalInstances",
						htme_debug.WARNING,
						"CORRUPTED VARGROUP! CONTENTS: " + json_encode(group)
					);
				}
				else
				{
					htme_debugger(
						"htme_forceSyncLocalInstances",
						htme_debug.WARNING,
						"Could not check var-group " +
						string(group[? "name"]) +
						" of instance " +
						string(inst_hash) +
						". MISSING BACKUP ENTRY!"
					);
				}

				// DO NOT continue with a broken group.
				continue;
			}
		}
		else
		{
			if (is_undefined(inst_hash) || is_undefined(group[? "name"]))
			{
				htme_debugger(
					"htme_forceSyncLocalInstances",
					htme_debug.WARNING,
					"CORRUPTED VARGROUP! CONTENTS: " + json_encode(group)
				);
			}
			else
			{
				htme_debugger(
					"htme_forceSyncLocalInstances",
					htme_debug.WARNING,
					"Could not check var-group " +
					string(group[? "name"]) +
					" of instance " +
					string(inst_hash) +
					". MISSING INSTANCE!"
				);
			}

			// Preserve original client behavior.
			exit;
		}

		// No valid player owner = this group cannot safely be synced.
		if (!is_string(inst_player) || inst_player == "")
		{
			htme_debugger(
				"htme_forceSyncLocalInstances",
				htme_debug.WARNING,
				"Skipping var-group " +
				string(group[? "name"]) +
				" of instance " +
				string(inst_hash) +
				". INVALID PLAYER OWNER!"
			);

			continue;
		}

		// Only sync the requested player's instances.
		if (inst_player != phash)
		{
			continue;
		}

		htme_syncSingleVarGroup(group, all);
	}

	self.syncForce = false;
}