var _boxWidth = 20;
var _boxHeight = 12;

if fade = true and global.game_fullscreen = false {
	draw_sprite_ext(s_fade,0,0,0,_boxWidth,_boxHeight,0,0,box_alpha);
}
else {
	if fade = true and global.game_fullscreen = true {
		//INCREASES BOX SIZE WHEN IN FULLSCREEN
		draw_sprite_ext(s_fade,0,0,0,_boxWidth+10,_boxHeight+5,0,0,box_alpha);
	}
}