//CREATES AND SETS FONT
globalvar FONT;
FONT = font_add_sprite(s_font, ord(" "), false, 4);	//USE THIS TO CHANGE PROPERTIES OF THE FONT
draw_set_color(c_white);
draw_set_font(FONT);

//ITEM VARIABLES
keyText = false;