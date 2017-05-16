enemy_health = 2;

enum enemy_state {
	idle,
	move_right,
	move_left,
	move_up,
	move_down,
	attack,
	death
};

enemy_state = enemy_state.idle;