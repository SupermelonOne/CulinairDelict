collected = false;
pickupable = true;
refundable = true;

if (!variable_instance_exists(id, "dropped")){
	dropped = false;	
}

if (!dropped){
	var amountOfItems = 4;
	var randomItem = irandom_range(1, amountOfItems);
	worth = 0;
	itemID = randomItem;
	switch(randomItem){
		case 1:
			worth = 1;
			break;
		case 2:
			worth = 1;
			break;
		case 3:
			worth = 4;
			break;
		case 4:
			worth = 3;
			break;
	}
	sprite_index = ItemSprite(randomItem);
}
else{
	moveVector.normalize();	
	newMoveSpeed = 0;
}