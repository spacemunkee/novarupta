if keys > 0 {
	with(o_door) {
		instance_destroy();
	}
	keys -= 1;
}