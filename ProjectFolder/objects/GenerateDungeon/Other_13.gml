global.myGrid = ds_grid_create(global.grid_width, global.grid_height);

ds_grid_set_region(global.myGrid, 0, 0, global.grid_width, global.grid_height, -1);

roomCount = 2;

myObject = instance_create_depth(global.grid_width/2 * global.cell_size, global.grid_height * global.cell_size, -1, RoomController);
instance_create_depth(global.grid_width/2 * global.cell_size + global.cell_size/2, global.grid_height * global.cell_size + global.cell_size/2, 0, PlayerObj);
ds_grid_set(global.myGrid, global.grid_width/2, global.grid_height, 0);
prevDir = 0;
prevRoomSize = 0;
prevRoomPos = new vector(0,0);


for (i = 0; i < roomCount; i++){
	//generate the things in the global.grid1
	event_user(0);
}
//place the actual objects onto the grid
event_user(1);





instance_create_depth(x, y, 0, DetectGrid);
