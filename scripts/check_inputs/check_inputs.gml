/// check_inputs()
// only to be acted on o_player

var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var key_attack = keyboard_check(vk_space);


with(o_player) {
	if(player_state == state.attack) {
		return;
	}
	
	player_state = state.idle;
	
	if(key_right) {
		player_state = state.move_right;
	} 
	
	if(key_left) {
		player_state = state.move_left;
	} 
	
	if(key_up) {
		player_state = state.move_up;
	} 
	
	if(key_down) {
		player_state = state.move_down;
	} 
	
	if(key_attack) {
		player_state = state.attack;
	}
}
