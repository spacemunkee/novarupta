//CREATES CAMERA
camera = camera_create();

//PLAYING THE GAME AT 1920X1080 CAMERA RESOLUTION IS VERY COOL. ALMOST LIKE IT'S A LITTLE BOARD GAME!
cam_x = 640;
cam_y = 360;

//CREATES VIEW MATRIX
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

//CREATES PROJECTION MATRIX
pm = matrix_build_projection_ortho(cam_x,cam_y,1,10000);

//APPLYS MATRIX'S TO THE CAMERA
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

/////////////////////////////////////////////

follow = o_player;
xTo = x;
yTo = y;

fade = true;
box_alpha = 1;

zoom = false;

zoom_x = 8;
zoom_y = 4.6;