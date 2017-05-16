/// handle the player

check_inputs()

switch(player_state) {
	case state.idle:
		player_idle();
	break;
	
	case state.move_right:
		move_player_right();
	break;
	
	case state.move_left:
		move_player_left();
	break;
	
	case state.move_up:
		move_player_up();
	break;
	
	case state.move_down:
		move_player_down();
	break;	
	
	case state.attack:
		player_attack();
	break;
}