/// move_player_left

if(sprite_index != s_player) sprite_index = s_player;

if(dir != DIR_LEFT) {
	dir = DIR_LEFT;
	dx = -move_speed;
	dy = 0;
}

check_collisions(id, dx, dy, sprite_yoffset, sprite_xoffset, sprite_yoffset, sprite_xoffset);
