/// move_player

if(sprite_index != s_player) sprite_index = s_player;

if(dir != DIR_UP) {
	dir = DIR_UP;
	image_angle = FACE_UP;
	dx = 0;
	dy = -move_speed;
}

check_collisions(id, dx, dy, sprite_yoffset, sprite_xoffset, sprite_yoffset, sprite_xoffset);
