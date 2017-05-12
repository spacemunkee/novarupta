/// move_player_right

if(sprite_index != s_player) sprite_index = s_player

if(dir != DIR_RIGHT) {
	dir = DIR_RIGHT
	dx = move_speed
	dy = 0
}

check_collisions(id, dx, dy, sprite_yoffset, sprite_xoffset, sprite_yoffset, sprite_xoffset)
