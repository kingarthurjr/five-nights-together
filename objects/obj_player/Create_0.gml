/// @description Initiate Syncing
/**
  * This object is a player. There's nothing more to say, really, just look
  * through the code or the manual for more information :)
  */

if room = rm_waitingroom
{
	layer = layer_get_id("Instances_4");
}

/* */
///ADD TO GMnet ENGINE
/**
  * Starts syncing.
  * Everything in this script MUST only be run in the create event and at the very beginning.
  */
mp_sync();
/**
 * Tell the engine to add the position:
 * x,y
 * These variables will be synced as part of a so called "variable group".
 * It will be called "Pos" and syncs it every 5 seconds.
 * We sync the position every 5 seconds to prevent the players from desyncing.
 */
mp_addPosition("Pos",5*room_speed);
/**
  * Change the sync mode to be SMART.
  * This means that the packets get definitely delivered, this "emulates" the 
  * reliability of TCP.
  * And it also only syncs if the variable has changed since the last sync.
  * Please note that this is not that fast and should not be executed for the same group
  * in a short time, so set a big delay!
  */
mp_setType("Pos",mp_type.SMART);
/**
  * Adds a tolerance of 20 to the Pos group (x and y position).
  * This meand when a client recieves the position update, it will only sync it, if the
  * local x and y position are 20 pixels more/less than the actual position.
  * Since we sync the position to avoid desync, a low number means the player might "flicker" every
  * time the position is recieved, because it slightly changes it.
  * We only want to change it if the client is significantly away from the player, so it get's 
  * corrected.
  */
mp_tolerance("Pos",20);


/**
 * Tell the engine to add the basic drawing variables:
 * image_alpha,image_angle,image_blend,image_index,image_speed,image_xscale
 * image_yscale,visible
 * This is mostly to sync the xscale (the direction the player faces in) and the color in this demo.
 * Also synced for the same reason as the position: To avoid desync.
 */
mp_addBuiltinBasic("basicDrawing",15*room_speed);
mp_setType("basicDrawing",mp_type.SMART);

/**
 * Tell the engine to add the builtin GameMaker variables:
 * direction,gravity,gravity_direction,friction,hspeed,vspeed
 * Sync the entire physics. Also to avoid desync.
 */
mp_addBuiltinPhysics("basicPhysics",15*room_speed);
mp_setType("basicPhysics",mp_type.SMART);

/**
 * This adds two custom groups that sync the variables 
 * name,pressed_jump,pressed_left,pressed_right
 *
 * SADLY, due to current limitations in GML, we can't access any of this variables by their
 * name in the engine. You need to add their values to a special list in begin step and
 * retrieve them in end step. Go to these events in this demo object and you'll see.
 *
 * Name is synced to update the name (obviously) and is sent SMART and with great delay between the
 * syncs, since it shouldn't actually sync at all. At this point we should note, that all variable
 * groups also get synced automatically when needed, for example if someone connects or changes room.
 *
 * The second group syncs the controls every step, this is the important part, this is what actually
 * moves the player.
 *
 * Since no type was changed, the default type FAST is chosen, this means packets get sent
 * only once, but very fast.
 * This however means, that the other clients could desync, that's why we sync position and physics.
 *
 * The third argument specifys the type of the variables. See
 * http://docs.yoyogames.com/source/dadiospice/002_reference/buffers/buffer_read.html
 * for all options
 */
mp_add("playerName","name",buffer_string,999999*room_speed);
mp_setType("playerName",mp_type.SMART);
mp_add("playerSkin","skin,animatronicChosen",buffer_u8,999999*room_speed);
mp_setType("playerSkin",mp_type.SMART);
mp_add("controls","pressed_left,pressed_up,pressed_down,pressed_right",buffer_bool,1);

/** 
 * By the way:
 * Our object player is persistent. That means it will travel through rooms without getting destroyed.
 * Non local players however WILL get destroyed on changing the room.
 * This way, when entering a room, only our player will actually travel.
 * If you also want to sync non local players between rooms, see object obj_htme_time
 */

/* */
///Setup basic stuff for the demo platformer.

/** These variables are used to indicate if the player hat controls this
  * player instance, has pressed one of the three buttons.
  */

self.time = 0;
step = 0;

if room = rm_waitingroom
{
    facing = RIGHT;
    spd = 8;
}
else
{
	facing = DOWN;
	spd = 4; //speed to move at, so it's easier to change speed if necessary
}

self.playerNum = -1;

self.pressed_left = false;
self.pressed_up = false;
self.pressed_down = false;
self.pressed_right = false;
self.name = "";
self.skin = 0;
self.animatronicChosen = 0;
self.special = false; //Add special syncing when that's done

stopMoving = false;
previousFrame = image_index;

if htme_isLocal()
{
	self.name = global.name;
	self.skin = global.skin;
	self.animatronicChosen = global.animatronicChosen;
	instance_create(x,y,obj_campoint).playerobj = self;
}

collision = false;
fade = 0;
darkness = 0;
sound = snd_foot1;
previousSound = sound;

if global.coinLocation = 0
{
    spawn = true;
    if global.animatronicChosen = 6
    {
        global.coinLocation = null;
    }
}
else
{
    spawn = false;
}

event_inherited();