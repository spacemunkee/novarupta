/// check_inputs()
// only to be acted on o_player

with(o_player) {
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))) {
		player_state = state.move_right
	} else if(keyboard_check(vk_left) || keyboard_check(ord("A"))) {
		player_state = state.move_left
	} else if(keyboard_check(vk_up) || keyboard_check(ord("W"))) {
		player_state = state.move_up
	} else if(keyboard_check(vk_down) || keyboard_check(ord("S"))) {
		player_state = state.move_down
	} else {
		player_state = state.idle
	}
}
