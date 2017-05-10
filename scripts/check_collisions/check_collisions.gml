/// check_collisions(_objectid, _dx, _dy, _top, _right, _bottom, _left)

#macro TILE_SIZE	16		// size of debug tilemap
#macro TILE_SHIFT   4		// 1<<5 = 16

var _objectid = argument0
var _dx = argument1
var _dy = argument2
var _top = argument3
var _right = argument4
var _bottom = argument5
var _left = argument6

with(_objectid) {

	x += _dx
	y += _dy
	
	if(dir = DIR_RIGHT) {
		var tx = (x + _right) >> TILE_SHIFT
		var ty1 = (y + _bottom) >> TILE_SHIFT
		var ty2 = (y - _top) >> TILE_SHIFT
		
		var tile1 = tilemap_get(collision_map, tx, ty1) & tile_index_mask
		var tile2 = tilemap_get(collision_map, tx, ty2) & tile_index_mask
		
		if(tile1 != 0 || tile2 != 0) {
			x = (tx << TILE_SHIFT) - TILE_SIZE + (TILE_SIZE - _right)
		}
	}
	
	if(dir = DIR_LEFT) {
		var tx = (x - _left) >> TILE_SHIFT
		var ty1 = (y + _bottom) >> TILE_SHIFT
		var ty2 = (y - _top) >> TILE_SHIFT
		
		var tile1 = tilemap_get(collision_map, tx, ty1) & tile_index_mask
		var tile2 = tilemap_get(collision_map, tx, ty2) & tile_index_mask
		
		if(tile1 != 0 || tile2 != 0) {
			x = (x & ~(TILE_SIZE - 1)) + _left;
		}
	}
	
	if(dir = DIR_DOWN) {
		var tx1 = (x + (_right - 4)) >> TILE_SHIFT
		var tx2 = (x - (_left - 4)) >> TILE_SHIFT
		var ty = (y + _bottom) >> TILE_SHIFT
		
		var tile1 = tilemap_get(collision_map, tx1, ty) & tile_index_mask
		var tile2 = tilemap_get(collision_map, tx2, ty) & tile_index_mask
		
		if(tile1 != 0 || tile2 != 0) {
			y = (ty << TILE_SHIFT) - (_bottom + 1);
		}
	}
	
	if(dir = DIR_UP) {
		var tx1 = (x + (_right - 4)) >> TILE_SHIFT
		var tx2 = (x - (_left - 4)) >> TILE_SHIFT
		var ty = (y - _top) >> TILE_SHIFT
		
		var tile1 = tilemap_get(collision_map, tx1, ty) & tile_index_mask
		var tile2 = tilemap_get(collision_map, tx2, ty) & tile_index_mask
		
		if(tile1 != 0 || tile2 != 0) {
			y = (ty << TILE_SHIFT) + TILE_SIZE + _top + 1;

		}
	}

}

