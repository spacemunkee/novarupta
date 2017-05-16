/// check_collisions(_objectid, _dx, _dy, _top_offset, _right_offset, _bottom_offset, _left_offset)

#macro TILE_SIZE	32		// size of debug tilemap
#macro TILE_SHIFT   5		// 1<<5 = 32

var _objectid = argument0
var _dx = argument1
var _dy = argument2
var _top_offset = argument3
var _right_offset = argument4
var _bottom_offset = argument5
var _left_offset = argument6

with(_objectid) {

	x += _dx
	y += _dy
	
	if(dir = DIR_RIGHT) {
		var tx = (x + _right_offset) >> TILE_SHIFT
		var ty1 = (y + _bottom_offset) >> TILE_SHIFT
		var ty2 = (y - _top_offset) >> TILE_SHIFT
		
		var tile1 = tilemap_get(collision_map, tx, ty1) & tile_index_mask
		var tile2 = tilemap_get(collision_map, tx, ty2) & tile_index_mask
		
		if(tile1 != 0 || tile2 != 0) {
			x = (tx << TILE_SHIFT) - TILE_SIZE + (TILE_SIZE - _right_offset)
			return true			
		}
	}
	
	if(dir = DIR_LEFT) {
		var tx = (x - _left_offset) >> TILE_SHIFT
		var ty1 = (y + _bottom_offset) >> TILE_SHIFT
		var ty2 = (y - _top_offset) >> TILE_SHIFT
		
		var tile1 = tilemap_get(collision_map, tx, ty1) & tile_index_mask
		var tile2 = tilemap_get(collision_map, tx, ty2) & tile_index_mask
		
		if(tile1 != 0 || tile2 != 0) {
			x = (x & ~(TILE_SIZE - 1)) + _left_offset;
			return true
		}
	}
	
	if(dir = DIR_DOWN) {
		var tx1 = (x + (_right_offset - 4)) >> TILE_SHIFT
		var tx2 = (x - (_left_offset - 4)) >> TILE_SHIFT
		var ty = (y + _bottom_offset) >> TILE_SHIFT
		
		var tile1 = tilemap_get(collision_map, tx1, ty) & tile_index_mask
		var tile2 = tilemap_get(collision_map, tx2, ty) & tile_index_mask
		
		if(tile1 != 0 || tile2 != 0) {
			y = (ty << TILE_SHIFT) - (_bottom_offset + 1)
			return true
		}
	}
	
	if(dir = DIR_UP) {
		var tx1 = (x + (_right_offset - 4)) >> TILE_SHIFT
		var tx2 = (x - (_left_offset - 4)) >> TILE_SHIFT
		var ty = (y - _top_offset) >> TILE_SHIFT
		
		var tile1 = tilemap_get(collision_map, tx1, ty) & tile_index_mask
		var tile2 = tilemap_get(collision_map, tx2, ty) & tile_index_mask
		
		if(tile1 != 0 || tile2 != 0) {
			y = (ty << TILE_SHIFT) + TILE_SIZE + _top_offset + 1
			return true
		}
	}	
}

return false

