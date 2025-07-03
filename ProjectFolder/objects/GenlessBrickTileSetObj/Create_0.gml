depth = 99;
doneTileset = false;
destroyMe = false;
placefloor = false;



	doneTileset = true;
	var surroundingTiles = [
	[0, 0, 0],
	[0, 2, 0],
	[0, 0, 0]
	];
	//check all position and update them
	{
		//y = 0
		if (place_meeting(x-16, y-16, GenlessTileSetObj)){
			array_set(surroundingTiles[0], 0, 1); 
		}
		if (place_meeting(x, y-16, GenlessTileSetObj)){
			array_set(surroundingTiles[0], 1, 1); 
		}
		if (place_meeting(x+16, y-16, GenlessTileSetObj)){
			array_set(surroundingTiles[0], 2, 1); 
		}
		//y = 1
		if (place_meeting(x-16, y, GenlessTileSetObj)){
			array_set(surroundingTiles[1], 0, 1); 
		}
		if (place_meeting(x, y, GenlessTileSetObj)){
			array_set(surroundingTiles[1], 1, 1); 
		}
		if (place_meeting(x+16, y, GenlessTileSetObj)){
			array_set(surroundingTiles[1], 2, 1); 
		}
		//y = 2
		if (place_meeting(x-16, y+16, GenlessTileSetObj)){
			array_set(surroundingTiles[2], 0, 1); 
		}
		if (place_meeting(x, y+16, GenlessTileSetObj)){
			array_set(surroundingTiles[2], 1, 1); 
		}
		if (place_meeting(x+16, y+16, GenlessTileSetObj)){
			array_set(surroundingTiles[2], 2, 1); 
		}
		
	}
	
	//set sprite START
	
/////LEAST SPECIFIC
	if (
	(
	surroundingTiles[0][1] == 0 &&
	surroundingTiles[1][0] == 0 &&
	surroundingTiles[1][2] == 0 &&
	surroundingTiles[2][1] == 1
	)){
		image_index = 42;
	}
//
	if (
	(
	surroundingTiles[0][1] == 0 &&
	surroundingTiles[1][0] == 0 &&
	surroundingTiles[1][2] == 1 &&
	surroundingTiles[2][1] == 0
	)){
		image_index = 43;
	}
//
	if (
	(
	surroundingTiles[0][1] == 1 &&
	surroundingTiles[1][0] == 0 &&
	surroundingTiles[1][2] == 0 &&
	surroundingTiles[2][1] == 0
	)){
		image_index = 44;
	}
//
	if (
	(
	surroundingTiles[0][1] == 0 &&
	surroundingTiles[1][0] == 1 &&
	surroundingTiles[1][2] == 0 &&
	surroundingTiles[2][1] == 0
	)){
		image_index = 45;
	}
//
	if (
	(
	surroundingTiles[0][1] == 0 &&
	surroundingTiles[1][0] == 0 &&
	surroundingTiles[1][2] == 0 &&
	surroundingTiles[2][1] == 0
	)){
		image_index = 46;
	}


/////Less specific
	if (
	(
	surroundingTiles[0][1] == 1 &&
	surroundingTiles[1][0] == 0 &&
	surroundingTiles[1][2] == 0 &&
	surroundingTiles[2][1] == 1
	)){
		image_index = 32;
	}
//
	if (
	(
	surroundingTiles[0][1] == 0 &&
	surroundingTiles[1][0] == 1 &&
	surroundingTiles[1][2] == 1 &&
	surroundingTiles[2][1] == 0
	)){
		image_index = 33;
	}
	
	
/////Bit more specific
	if (
	(
	surroundingTiles[0][1] == 0 &&
	surroundingTiles[1][0] == 0 &&
	surroundingTiles[1][2] == 1 &&
	surroundingTiles[2][1] == 1 &&
	surroundingTiles[2][2] == 1
	)){
		image_index = 34;
	}
//
	if (
	(
	surroundingTiles[0][1] == 0 &&
	surroundingTiles[1][0] == 0 &&
	surroundingTiles[1][2] == 1 &&
	surroundingTiles[2][1] == 1 &&
	surroundingTiles[2][2] == 0
	)){
		image_index = 35;
	}
//
	if (
	(
	surroundingTiles[0][1] == 0 &&
	surroundingTiles[1][0] == 1 &&
	surroundingTiles[1][2] == 0 &&
	surroundingTiles[2][1] == 1 &&
	surroundingTiles[2][0] == 1	
	)){
		image_index = 36;
	}
//
	if (
	(
	surroundingTiles[0][1] == 0 &&
	surroundingTiles[1][0] == 1 &&
	surroundingTiles[1][2] == 0 &&
	surroundingTiles[2][1] == 1 &&
	surroundingTiles[2][0] == 0
	)){
		image_index = 37;
	}
//
	if (
	(
	surroundingTiles[0][0] == 1 &&
	surroundingTiles[0][1] == 1 &&
	surroundingTiles[1][0] == 1 &&
	surroundingTiles[1][2] == 0 &&
	surroundingTiles[2][1] == 0
	)){
		image_index = 38;
	}
//
	if (
	(
	surroundingTiles[0][0] == 0 &&
	surroundingTiles[0][1] == 1 &&
	surroundingTiles[1][0] == 1 &&
	surroundingTiles[1][2] == 0 &&
	surroundingTiles[2][1] == 0
	)){
		image_index = 39;
	}
//
	if (
	(
	surroundingTiles[0][1] == 1 &&
	surroundingTiles[0][2] == 1 &&
	surroundingTiles[1][0] == 0 &&
	surroundingTiles[1][2] == 1 &&
	surroundingTiles[2][1] == 0
	)){
		image_index = 40;
	}
//
	if (
	(
	surroundingTiles[0][1] == 1 &&
	surroundingTiles[0][2] == 0 &&
	surroundingTiles[1][0] == 0 &&
	surroundingTiles[1][2] == 1 &&
	surroundingTiles[2][1] == 0
	) ){
		image_index = 41;
	}
	
/////Even more specific
//
	if (array_equals
	(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 0,2,1 ], 
	[ 0,1,1 ] 
	]
	) 
	||
	array_equals
	(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 0,2,1 ], 
	[ 0,1,1 ] 
	]
	)
	||
	array_equals
	(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 0,2,1 ], 
	[ 1,1,1 ] 
	]
	)
	||
	array_equals
	(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 0,2,1 ], 
	[ 1,1,1 ] 
	]
	)
	){
		image_index = 16;
	}
//
	if (
	array_equals
	(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 0,2,1 ], 
	[ 0,1,1 ] 
	]
	) 
	||
	array_equals
	(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 0,2,1 ], 
	[ 0,1,1 ] 
	]
	) 
	||
	array_equals
	(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 0,2,1 ], 
	[ 1,1,1 ] 
	]
	) 
	||
	array_equals
	(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 0,2,1 ], 
	[ 1,1,1 ] 
	]
	) 
	){
		image_index = 17;
	}
//
	if (
	array_equals
	(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 0,2,1 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 0,2,1 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 0,2,1 ], 
	[ 1,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 0,2,1 ], 
	[ 1,1,0 ] 
	]
	)
	){
		image_index = 18;
	}
//
	if (
	array_equals
	(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 0,2,1 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 0,2,1 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 0,2,1 ], 
	[ 1,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 0,2,1 ], 
	[ 1,1,0 ] 
	]
	) 
	){
		image_index = 19;
	}
//
	if (
	array_equals
	(surroundingTiles,
	[ 
	[ 0,0,0 ], 
	[ 1,2,1 ], 
	[ 1,1,1 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,0,0 ], 
	[ 1,2,1 ], 
	[ 1,1,1 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 0,0,1 ], 
	[ 1,2,1 ], 
	[ 1,1,1 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,0,1 ], 
	[ 1,2,1 ], 
	[ 1,1,1 ] 
	]
	) 
	){
		image_index = 20;
		show_debug_message("the 20 is loaded")
	}
//
	if (
	array_equals
	(surroundingTiles,
	[ 
	[ 0,0,0 ], 
	[ 1,2,1 ], 
	[ 1,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,0,0 ], 
	[ 1,2,1 ], 
	[ 1,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 0,0,1 ], 
	[ 1,2,1 ], 
	[ 1,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,0,1 ], 
	[ 1,2,1 ], 
	[ 1,1,0 ] 
	]
	) 
	){
		image_index = 21;
	}
//
	if (
	array_equals
	(surroundingTiles,
	[ 
	[ 0,0,0 ], 
	[ 1,2,1 ], 
	[ 0,1,1 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,0,0 ], 
	[ 1,2,1 ], 
	[ 0,1,1 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 0,0,1 ], 
	[ 1,2,1 ], 
	[ 0,1,1 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,0,1 ], 
	[ 1,2,1 ], 
	[ 0,1,1 ] 
	]
	)
	){
		image_index = 22;
	}
//
	if (
	array_equals
	(surroundingTiles,
	[ 
	[ 0,0,0 ], 
	[ 1,2,1 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,0,0 ], 
	[ 1,2,1 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 0,0,1 ], 
	[ 1,2,1 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals
	(surroundingTiles,
	[ 
	[ 1,0,1 ], 
	[ 1,2,1 ], 
	[ 0,1,0 ] 
	]
	) 
	){
		image_index = 23;
	}
//
	if (
	array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,0 ], 
	[ 1,1,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,0 ], 
	[ 1,1,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,0 ], 
	[ 1,1,1 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,0 ], 
	[ 1,1,1 ] 
	]
	) 
	){
		image_index = 24;
	}
//
	if (
	array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,0 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,0 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,0 ], 
	[ 0,1,1 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,0 ], 
	[ 0,1,1 ] 
	]
	) 
	){
		image_index = 25;
	}
//
	if (
	array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,0 ], 
	[ 1,1,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,0 ], 
	[ 1,1,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,0 ], 
	[ 1,1,1 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,0 ], 
	[ 1,1,1 ] 
	]
	) 
	){
		image_index = 26;
	}
//
	if (
	array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,0 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,0 ], 
	[ 0,1,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,0 ], 
	[ 0,1,1 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,0 ], 
	[ 0,1,1 ] 
	]
	) 
	){
		image_index = 27;
	}
//
	if (
	array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,1 ], 
	[ 0,0,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,1 ], 
	[ 1,0,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,1 ], 
	[ 0,0,1 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,1 ], 
	[ 1,0,1 ] 
	]
	) 
	){
		image_index = 28;
	}
//
	if (
	array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,1 ], 
	[ 0,0,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,1 ], 
	[ 1,0,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,1 ], 
	[ 0,0,1 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,1 ], 
	[ 1,0,1 ] 
	]
	) 
	){
		image_index = 29;
	}
//
	if (
	array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,1 ], 
	[ 0,0,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,1 ], 
	[ 1,0,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,1 ], 
	[ 0,0,1 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,1 ], 
	[ 1,0,1 ] 
	]
	) 
	){
		image_index = 30;
	}
//
	if (
	array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,1 ], 
	[ 0,0,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,1 ], 
	[ 1,0,0 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,1 ], 
	[ 0,0,1 ] 
	]
	) ||
		array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,1 ], 
	[ 1,0,1 ] 
	]
	) 
	){
		image_index = 31;
	}
	
	
//MOST SPECIFIC
	if (array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,1 ], 
	[ 1,1,1 ] 
	]
	) ){
		image_index = 0;
		destroyMe = true;
	}
	else{
		placefloor = true;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,1 ], 
	[ 1,1,1 ] 
	]
	) ){
		image_index = 1;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,1 ], 
	[ 1,1,1 ] 
	]
	) ){
		image_index = 2;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,1 ], 
	[ 1,1,1 ] 
	]
	) ){
		image_index = 3;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,1 ], 
	[ 1,1,0 ] 
	]
	) ){
		image_index = 4;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,1 ], 
	[ 1,1,0 ] 
	]
	) ){
		image_index = 5;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,1 ], 
	[ 1,1,0 ] 
	]
	) ){
		image_index = 6;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,1 ], 
	[ 1,1,0 ] 
	]
	) ){
		image_index = 7;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,1 ], 
	[ 0,1,1 ] 
	]
	) ){
		image_index = 8;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,1 ], 
	[ 0,1,1 ] 
	]
	) ){
		image_index = 9;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,1 ], 
	[ 0,1,1 ] 
	]
	) ){
		image_index = 10;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,1 ], 
	[ 0,1,1 ] 
	]
	) ){
		image_index = 11;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 1,1,1 ], 
	[ 1,2,1 ], 
	[ 0,1,0 ] 
	]
	) ){
		image_index = 12;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 0,1,1 ], 
	[ 1,2,1 ], 
	[ 0,1,0 ] 
	]
	) ){
		image_index = 13;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 1,1,0 ], 
	[ 1,2,1 ], 
	[ 0,1,0 ] 
	]
	) ){
		image_index = 14;
	}
//
	if (array_equals(surroundingTiles,
	[ 
	[ 0,1,0 ], 
	[ 1,2,1 ], 
	[ 0,1,0 ] 
	]
	) ){
		image_index = 15;
	}


show_debug_message(image_index);