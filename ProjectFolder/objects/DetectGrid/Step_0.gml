if (global.loadStep == 4){
	for (h = 0; h < global.grid_width; h++){
		for (v = 0; v < global.grid_height; v++){
			if (place_meeting(h * global.cell_size, v * global.cell_size, Obstacle) || place_meeting(h * global.cell_size, v * global.cell_size, damagingFloor))
			{
				mp_grid_add_cell(global.grid, h, v);
			}
		}
	}
	depth = -1000;
	global.loadStep = 5;
	//instance_destroy();
}