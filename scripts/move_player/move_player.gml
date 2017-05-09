/// move_player

if(keyboard_check(vk_right)) {
	if(dir != DIR_RIGHT) {
		dir = DIR_RIGHT
		dx = move_speed
		dy = 0
	}
} else if(keyboard_check(vk_left)) {
	if(dir != DIR_LEFT) {
		dir = DIR_LEFT
		dx = -move_speed
		dy = 0
	}
} else if(keyboard_check(vk_up)) {
	if(dir != DIR_UP) {
		dir = DIR_UP
		dx = 0
		dy = -move_speed
	}
} else if(keyboard_check(vk_down)) {
	if(dir != DIR_DOWN) {
		dir = DIR_DOWN
		dx = 0
		dy = move_speed
	} else {
		if(dir != DIR_STOP) {
			dir = DIR_STOP
			dx = 0
			dy = 0
		}
	}
}

check_collisions(id, dx, dy, 8, 8, 8, 8)