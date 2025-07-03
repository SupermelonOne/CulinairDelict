	var dir = choose(0, 1, 2, 3);
	while (dir == prevDir){
		dir = choose(0, 1, 2, 3);
	}
	while (dir == realPrevDir){
		dir = choose(0, 1, 2, 3);
	}
	var allowBuild = false;
	var keepX = myObject.x;
	var keepY = myObject.y;
	while (!allowBuild){
		switch(dir){
			case 0:
				myObject.y += 14 * global.cell_size;
				break;
			case 1:
				myObject.y -= 14 * global.cell_size;
				break;
			case 2:
				myObject.x += 14 * global.cell_size;
				break;
			case 3:
				myObject.x -= 14 * global.cell_size;
				break;
		}
		if (
		myObject.x / global.cell_size <= 0 ||
		myObject.x / global.cell_size >= global.grid_width ||
		myObject.y / global.cell_size <= 0 ||
		myObject.y / global.cell_size >= global.grid_height
		)
		{
			allowBuild = false;
			dir = choose(0, 1, 2, 3);
		}
		else{
			allowBuild = true;
		}
		myObject.x = keepX;
		myObject.y = keepY;
	}
	
	
	switch(dir){
		case 0:
			prevDir = 1;
			break;
		case 1:
			prevDir = 0;
			break;
		case 2:
			prevDir = 3;
			break;
		case 3:
			prevDir = 2;
			break;
	}
	realPrevDir = dir;
	


	ds_grid_set(global.myGrid, myObject.x/global.cell_size, myObject.y/global.cell_size, 0);
	var pathLength = irandom_range(2, 8);
	
	for (var j = 0; j < pathLength; j++){
		switch(dir){
			case 0:
				myObject.y += global.cell_size;
				break;
			case 1:
				myObject.y -= global.cell_size;
				break;
			case 2:
				myObject.x += global.cell_size;
				break;
			case 3:
				myObject.x -= global.cell_size;
				break;
		}
		if (irandom_range(0, 100) < 8){
			ds_grid_set(global.myGrid, myObject.x/global.cell_size, myObject.y/global.cell_size, choose(-2, -3, -2, -3, -2, -3, -2, -3, -2, -3, -4, -4, -2, -3, -2, -3, -2, -3, -2, -3, -2, -3, -4, -4, -5));
		}
		else if (irandom_range(0, 100) < 5){
			ds_grid_set(global.myGrid, myObject.x/global.cell_size, myObject.y/global.cell_size, choose(1, 52, 53, 1, 52, 53));
		}
		else{
			ds_grid_set(global.myGrid, myObject.x/global.cell_size, myObject.y/global.cell_size, 0);
		}

	}