if (destroyMe){
	instance_destroy();	
}
if (placefloor){
	GenerateTile(x/global.cell_size, y/global.cell_size, 0);
	placefloor = false;
}