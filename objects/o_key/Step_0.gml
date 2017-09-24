if distance_to_object(o_player) < 20 {
	with(o_text) {
		keyText = true;
	}
}		
else {
	if distance_to_object(o_player) > 20 {
		with(o_text) {
			keyText = false;
		}
	}
}