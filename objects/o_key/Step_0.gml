if distance_to_object(o_player) < 25 {
	with(o_text) {
		keyText = true;
	}
}		
else {
	if distance_to_object(o_player) > 25 {
		with(o_text) {
			keyText = false;
		}
	}
}