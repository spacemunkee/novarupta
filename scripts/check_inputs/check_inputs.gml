/// check_inputs()
// only to be acted on o_player

var key_right		= keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_left		= keyboard_check(vk_left) || keyboard_check(ord("A"));
var key_up			= keyboard_check(vk_up) || keyboard_check(ord("W"));
var key_down		= keyboard_check(vk_down) || keyboard_check(ord("S"));
var key_attack		= keyboard_check(vk_space);

//Diagonal movements
var key_up_right	= keyboard_check(vk_up) && keyboard_check(vk_right) || keyboard_check(ord("W")) && keyboard_check(ord("D"));
var key_up_left		= keyboard_check(vk_up) && keyboard_check(vk_left) || keyboard_check(ord("W")) && keyboard_check(ord("A"));
var key_down_right	= keyboard_check(vk_down) && keyboard_check(vk_right) || keyboard_check(ord("S")) && keyboard_check(ord("D"));
var key_down_left	= keyboard_check(vk_down) && keyboard_check(vk_left) || keyboard_check(ord("S")) && keyboard_check(ord("A"));

//Changes state
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

	//Diagonal movement

	if(key_up_right) {
		player_state = state.move_up_right;
	}
	
	if(key_up_left) {
		player_state = state.move_up_left;
	}

	if(key_down_right) {
		player_state = state.move_down_right;
	}	

	if(key_down_left) {
		player_state = state.move_down_left;
	}

	//Attack

	if(key_attack) {
		player_state = state.attack;
	}
}
