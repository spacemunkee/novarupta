if distance_to_object(o_player) < 20 {
	with(o_text) {
		keyText = true;
	}
	
	//DESTROYS KEY WHEN E IS PRESSED AND STOPS DISPLAYING TEXT
	if keyboard_check(ord("E")) {
		with(o_text) {
			keyText = false;
		}
		instance_destroy();
	}
}		
else {
	if distance_to_object(o_player) > 20 {
		with(o_text) {
			keyText = false;
		}
	}
}