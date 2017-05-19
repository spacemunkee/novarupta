/// move_player

if(sprite_index != s_player) sprite_index = s_player;

if(dir != DIR_DOWN_LEFT) {
	dir = DIR_DOWN_LEFT;
	image_angle = FACE_DOWN;
	dx = -move_speed;
	dy = +move_speed;
}

check_collisions(id, dx, dy, sprite_yoffset, sprite_xoffset, sprite_yoffset, sprite_xoffset);
