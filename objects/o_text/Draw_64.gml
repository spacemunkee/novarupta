/// @description Draws text

//FPS COUNTER - JUST FOR DEBUGGING
draw_set_font(FONT);
draw_set_halign(fa_left)
draw_text_transformed(10,10,"FPS: "+string(fps),1,1,image_angle);

//TEMP CAMERA VALUES - CAN BE REMOVED
with(o_camera) {
	draw_text_transformed(10,40,"CAM X: "+string(cam_x),1,1,image_angle);
	draw_text_transformed(10,70,"CAM Y: "+string(cam_y),1,1,image_angle);
}

//DISPLAYS ITEM TEXT WHEN NEAR AN ITEM
if itemText = true {
	draw_set_font(FONT_SMALL);
	draw_set_halign(fa_center);
	draw_text_transformed(view_wport[0]/2,view_hport[0]/2+100,"Press [E] to pick up",1,1,image_angle);
}	