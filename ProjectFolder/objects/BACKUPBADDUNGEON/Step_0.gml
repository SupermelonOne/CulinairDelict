if (global.loadStep == 2){
	instance_create_depth(x, y, 0, DetectGrid);
	global.generated = true;
	global.loadStep = 3;
	global.loaded = true;
}

if (global.loadStep == 1){
	event_user(1);
	global.loadStep = 2;
}

if (global.loadStep == 0){
	global.notReadyWalls = 0;
	
	global.grid = mp_grid_create(0, 0, global.grid_width, global.grid_height, global.cell_size, global.cell_size);


	global.myGrid = ds_grid_create(global.grid_width, global.grid_height);
	global.generated = false;

	ds_grid_set_region(global.myGrid, 0, 0, global.grid_width, global.grid_height, -1);

	roomCount = 1000;

	myObject = instance_create_depth((global.grid_width/2) * global.cell_size, global.grid_height * global.cell_size, -1, RoomController);
	//instance_create_depth(global.grid_width/2 * global.cell_size + global.cell_size/2, global.grid_height/2 * global.cell_size + global.cell_size/2, 0, PlayerObj);
	//show_debug_message(myObject.x);

	event_user(2);
}