//DRAW TEXT HERE
draw_text_transformed(10,10,"FPS: "+string(fps),1,1,image_angle);

if keyText = true {
	draw_set_halign(fa_center);
	draw_text_transformed(view_wport[0]/2,view_hport[0]/2,"Press [E] to pick up",1,1,image_angle);
}	