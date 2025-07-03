if (global.loadStep == 2 && global.notReadyWalls <= 0){
	global.loadStep = 3;
	global.loaded = true;
}
if (global.loadStep == 1){
	//place the actual objects onto the grid
	event_user(1);
	instance_create_depth(x, y, 0, DetectGrid);
	global.generated = true;	
	global.loadStep = 2;
}
if (global.loadStep == 0){
	global.notReadyWalls = 0;

	global.grid = mp_grid_create(0, 0, global.grid_width, global.grid_height, global.cell_size, global.cell_size);

	//calls dungeon generation
	roomCount = 122;
	instance_create_depth(x, y, 0, DungeonRoomPresets);

	event_user(2);

}