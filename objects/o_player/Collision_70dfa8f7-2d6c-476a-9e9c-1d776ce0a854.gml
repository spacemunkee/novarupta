if(player_state == state.attack){
	with(other) {
		for(i = irandom_range(2,5); i != 0; i -= 1;) {
			instance_create_layer(o_chest.x-(irandom_range(15,35)),o_chest.y-(irandom_range(15,35)),"ItemLayer",o_byte);
		}
		instance_destroy();
	}
}