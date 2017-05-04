check_input()

if(left) {
	new_x = x - move_speed
	if(tile_) {
		x = new_x
	}
}

if(right) {
	x += move_speed
}

if(up) {
	y -= move_speed
}

if(down) {
	y += move_speed
}

