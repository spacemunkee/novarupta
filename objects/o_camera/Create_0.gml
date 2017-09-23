//CREATES CAMERA
camera = camera_create();

//CREATES VIEW MATRIX
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

//CREATES PROJECTION MATRIX
var pm = matrix_build_projection_ortho(640,360,1,10000);

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