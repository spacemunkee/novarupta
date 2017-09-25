//FULLSCREEN CODE

if global.game_fullscreen = false {
	//CHANGES RESOLUTION TO 1920X1080
	global.game_fullscreen = true;
	window_set_fullscreen(true);

	screenWidth = 1920;
	screenHeight = 1080;

	view_wview = screenWidth / 2;
	view_hview = screenHeight / 2;

	view_wport = screenWidth;
	view_hport = screenHeight;

	surface_resize(application_surface, screenWidth, screenHeight);
}
else {
	if global.game_fullscreen = true {
		//CHANGES RESOLUTION TO 1280X720
		global.game_fullscreen = false;
		window_set_fullscreen(false);
		
		screenWidth = 1280;
		screenHeight = 720;

		view_wview = screenWidth / 2;
		view_hview = screenHeight / 2;

		view_wport = screenWidth;
		view_hport = screenHeight;

		surface_resize(application_surface, screenWidth, screenHeight);
	}	
}