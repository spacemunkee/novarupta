//Fullscreen code
if global.game_fullscreen = false {
	global.game_fullscreen = true;
	window_set_fullscreen(true);

	screenWidth = display_get_width();
	screenHeight = display_get_height();

	view_wview = screenWidth / 2;
	view_hview = screenHeight / 2;

	view_wport = screenWidth;
	view_hport = screenHeight;

	surface_resize(application_surface, screenWidth, screenHeight);
}
else {
	if global.game_fullscreen = true {
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