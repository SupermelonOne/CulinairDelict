	var dir = choose(0, 1, 2, 3);
	while (dir == prevDir){
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
	
	//moving the placeUnit to the proper start position
	switch(dir){
		case 0:
			myObject.x -= ceil(prevRoomSize/2) * global.cell_size;
			myObject.y += prevRoomSize * global.cell_size;
			break;
		case 1:
			myObject.x -= ceil(prevRoomSize/2) * global.cell_size;
			myObject.y -= global.cell_size;
			break;
		case 2:
			myObject.x = myObject.x;
			myObject.y += floor((prevRoomSize/2)) * global.cell_size;
			break;
		case 3:
			myObject.x -= (prevRoomSize + 1) * global.cell_size;
			myObject.y += floor((prevRoomSize/2)) * global.cell_size;

			break;
	}
	
	var roomSize = choose(5, 5, 7, 7, 7, 9);
	prevRoomSize = roomSize;
	ds_grid_set(global.myGrid, myObject.x/global.cell_size, myObject.y/global.cell_size, 0);
	var pathLength = irandom_range(3, 5);

	
	for (j = 0; j < pathLength; j++){
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
		ds_grid_set(global.myGrid, myObject.x/global.cell_size, myObject.y/global.cell_size, 0);
	}
	
	function makeTheRoom(_roomSize){
		var chosenRoom = array_create(0, 0);
		var chosenNumber = 0;
			switch(_roomSize){
				case 5:
					chosenNumber = irandom_range(0, array_length(global.fiveRoom)-1);
					array_copy(
					chosenRoom, 
					0, 
					global.fiveRoom[chosenNumber],
					0,
					array_length(global.fiveRoom[0])
					);
					break;
				case 7:
					chosenNumber = irandom_range(0, array_length(global.sevenRoom)-1);
					array_copy(
					chosenRoom, 
					0, 
					global.sevenRoom[chosenNumber],
					0,
					array_length(global.sevenRoom[0])
					);
					break;
				case 9:
					chosenNumber = irandom_range(0, array_length(global.nineRoom)-1);
					array_copy(
					chosenRoom, 
					0, 
					global.nineRoom[chosenNumber],
					0,
					array_length(global.nineRoom[0])
					);
					break;
			}
		//show_debug_message(chosenRoom);
		
		
			var roomTopLeft = new vector(myObject.x, myObject.y);
			for(h = 0; h < _roomSize; h++){
				for(v = 0; v < _roomSize; v++){
					var tileToPlace = 0;
					tileToPlace = chosenRoom[v][h];
					ds_grid_set(global.myGrid, myObject.x/global.cell_size, myObject.y/global.cell_size, tileToPlace);
					myObject.y += global.cell_size;
				}
				myObject.x += global.cell_size;
				myObject.y = roomTopLeft.y;
			}
	}
	switch(dir){
		case 0:
			//entering top
			myObject.x -= (floor(roomSize / 2)) * global.cell_size;
			//myObject.y -= myObject.y;
			makeTheRoom(roomSize);
			break;
		case 1:
			//entering bottom
			myObject.x -= (floor(roomSize / 2)) * global.cell_size;
			myObject.y -= (roomSize - 1) * global.cell_size;
			makeTheRoom(roomSize);			
			break;
		case 2:
			//entering left
			//myObject.x -= (roomSize - 1) * global.cell_size;
			myObject.y -= (floor(roomSize / 2)) * global.cell_size;
			makeTheRoom(roomSize);
			break;
		case 3:
			//entering right
			myObject.x -= (roomSize - 1) * global.cell_size;
			myObject.y -= (floor(roomSize / 2)) * global.cell_size;
			makeTheRoom(roomSize);
			break;
	}
	
	//show_debug_message("the object x after room placement is: ");
	//show_debug_message(myObject.x / global.cell_size);
	//show_debug_message("the object y after room placement is: ");
	//show_debug_message(myObject.y / global.cell_size);
	
	