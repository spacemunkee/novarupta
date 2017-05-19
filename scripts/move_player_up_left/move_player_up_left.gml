/// move_player

if(sprite_index != s_player) sprite_index = s_player;

if(dir != DIR_UP_LEFT) {
	dir = DIR_UP_LEFT;
	image_angle = FACE_UP;
	dx = -move_speed;
	dy = -move_speed;
}

check_collisions(id, dx, dy, sprite_yoffset, sprite_xoffset, sprite_yoffset, sprite_xoffset);
