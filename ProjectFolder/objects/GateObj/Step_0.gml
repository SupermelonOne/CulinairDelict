closed = global.bossActive;
if (closed){
	if (distance_to_object(global.player) < 8){	
		if (keyboard_check(ord("E"))){
			global.closeDoor = false;
		}
	}
}
if (closed && image_index !=0){
	image_speed = -1;	
}
else if (!closed && image_index != 3){
	image_speed = 1;	
}
else{
	image_speed = 0	
}