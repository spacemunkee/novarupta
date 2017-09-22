/// @description Initialize the game

randomize();

global.collision_map = layer_tilemap_get_id("Collisions");
layer_set_visible("Collisions", false); // hide the collision masks

display_reset(0,true);
