if(player_state == state.attack){
	with(other) {
		instance_destroy()
	}
} else { // TODO: move this into a player state
	if player_health > 0 {
		player_hurt();
	}
	else {
		if player_health <= 0 {
			player_death();
		}
	}
}

