//Creates and sets font
globalvar FONT;
FONT = font_add_sprite(s_font_small, ord(" "), false, 4);
draw_set_color(c_white);
draw_set_font(FONT);