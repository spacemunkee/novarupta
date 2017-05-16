/// move_player_down()

if(sprite_index != s_player) sprite_index = s_player;


if(dir != DIR_DOWN) {
	dir = DIR_DOWN;
	dx = 0;
	dy = move_speed;
} 

check_collisions(id, dx, dy, sprite_yoffset, sprite_xoffset, sprite_yoffset, sprite_xoffset);
