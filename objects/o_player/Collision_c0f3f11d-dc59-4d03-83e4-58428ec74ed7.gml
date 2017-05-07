if player_health > 0 {
	player_hurt();
}
else {
	if player_health <= 0 {
		player_death();
	}
}