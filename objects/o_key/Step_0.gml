if distance_to_object(o_player) < 20 {
	with(o_text) {
		itemText = true;
	}
	
	//DESTROYS KEY WHEN E IS PRESSED AND STOPS DISPLAYING TEXT - MAY BE MOVED TO A PLAYER STATE
	if keyboard_check(ord("E")) {
		with(o_text) {
			itemText = false;
		}
		instance_destroy();
	}
}		
else {
	if distance_to_object(o_player) > 20 {
		with(o_text) {
			itemText = false;
		}
	}
}