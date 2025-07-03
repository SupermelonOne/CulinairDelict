
for (var h = 0; h < global.grid_width; h++){
	for (var v = 0; v < global.grid_height; v++){
		//doing the borders
		if (h == 0 || h== global.grid_width-1 || v == 0 || v == global.grid_height-1){

			if (global.grid_width/2 == h && v == global.grid_height-1){
				GenerateTile(h, v, 0);
			}
			else{
				GenerateTile(h, v, -1);
			}
		}
		else
		//ZORG VOOR UITZONDERING BIJ HET ENTEREN VAN DE CASTLE
		{
			GenerateTile(h, v, ds_grid_get(global.myGrid, h, v));
		}
	}
}