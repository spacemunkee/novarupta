move_speed = 2
player_health = 5;
keys = 0;

// state stuff to be used later
enum state {
	idle,
	move_right,
	move_left,
	move_up,
	move_down,
	attack,
	death
}

state = state.idle