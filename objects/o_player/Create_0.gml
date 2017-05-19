/// init player

init_globals();

move_speed = 2;
player_health = 5;
keys = 0;
coins = 0;
dir = DIR_STOP;
dx = 0;
dy = 0;

collision_map = global.collision_map;

// state stuff to be used later
enum state {
	idle,
	move_right,
	move_left,
	move_up,
	move_down,
	move_up_right,
	move_up_left,
	move_down_right,
	move_down_left,
	attack,
	death
};

player_state = state.idle;