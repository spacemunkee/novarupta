/// player_idle()

// make sure we're on the correct sprite
if(sprite_index != s_player) sprite_index = s_player

if(dir != DIR_STOP) {
	dir = DIR_STOP
	dx = 0
	dy = 0
}