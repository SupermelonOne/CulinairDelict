image_speed = 0;
if (!dropped){
	var amountOfItems = 7;
	var randomItem = irandom_range(1, amountOfItems);
	worth = 0;
	itemID = randomItem;
	switch(randomItem){
		case 1:  //fork
			worth = choose(1,1,2);
			break;
		case 2:  //spoon
			worth = choose(1,2,2);
			break;
		case 3:  //pan
			worth = choose(6,7,8,14);
			break;
		case 4:  //fish
			worth = choose(4, 5, 6);
			break;
		case 5:  //cup
			worth = choose(3, 4, 5, 8, 9);
			break;
		case 6:  //pollepel
			worth = choose(5, 6, 7, 8);
			break;
		case 7:  //Beans
			worth = choose(6, 7, 8);
			break;
	}
	sprite_index = ItemSprite(randomItem);
	worth += floor(worth * (1 + global.dungeonLevel/10));
}

function collectCheck(){
	for (i = 0; i < array_length(global.p1Inventory); i++){
		if (global.p1Inventory[i][0] == 0){
			return true;
			break;
		}	
	}
	return false;
}

if (sprite_index == BigBeanItemSprt){
	image_xscale = 0.35;
	image_yscale = 0.35;	
}