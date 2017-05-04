move_speed = 2

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