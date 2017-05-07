//Knocks the player back and removes 1 health
o_player.x -= 30;
o_player.y -= 30;
with(o_player) {
	player_health -= 1;
}