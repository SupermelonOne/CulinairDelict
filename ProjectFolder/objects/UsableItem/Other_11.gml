/// @description instantiation
worth = 0;
if (!variable_instance_exists(id, "itemID")){
	itemID= 10000;
}
image_speed = 0;
if (!dropped){
	itemID += choose(1, 2, 3);	
}
sprite_index = ItemSprite(itemID);
function collectCheck(){
	for (i = 0; i < array_length(global.p1Inventory); i++){
		if (global.p1Inventory[i][0] == 0){
			return true;
			break;
		}	
	}
	return false;
}