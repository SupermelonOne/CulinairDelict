if (!(instance_exists(BACKUPBADDUNGEON) || instance_exists(GenerateDungeon))){
		global.grid = mp_grid_create(0, 0, global.grid_width, global.grid_height, global.cell_size, global.cell_size);	
}