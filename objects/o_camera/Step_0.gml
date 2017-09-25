x += (xTo - x) / 12;	//LOWER THE DIVISION NUMBER
y += (yTo - y) / 12;	//INCREASE THE CAMERA SPEED

if (follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
}

//UPDATES VIEW MATRIX AND APPLYS IT TO THE CAMERA
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);

//FADE CODE
if fade = true {
	if box_alpha != 0 {
		box_alpha -= 0.008;	//INCREASE THIS NUMBER TO MAKE FADE FASTER
	}
	else {
		if box_alpha <= 0 {
			fade = false;
		}
	}
}

//ZOOM CODE - TEST

if zoom = true {
	
	if cam_x != 320 {
		cam_x -= zoom_x;
	}
	
	if cam_y >= 180 {
		cam_y -= zoom_y;
	}
	
	pm = matrix_build_projection_ortho(cam_x,cam_y,1,10000);
	camera_set_proj_mat(camera,pm);
	
}
else {
	if zoom = false {
		
		if cam_x != 640 {
			cam_x += zoom_x;
		}
		
		if cam_y != 360 {
			cam_y += zoom_y;
		}
		
		pm = matrix_build_projection_ortho(cam_x,cam_y,1,10000);
		camera_set_proj_mat(camera,pm);
		
	}
}