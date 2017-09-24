/// @description Initialize the game

global.game_fullscreen = false;

//script_execute(scr_fullscreen);

randomize();

global.collision_map = layer_tilemap_get_id("Collisions");
layer_set_visible("Collisions", false); // hide the collision masks

display_reset(0,true);
