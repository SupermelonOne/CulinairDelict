if (!refundable){
	move_towards_point(other.parentObj.x+8, other.parentObj.y, newMoveSpeed);
	newMoveSpeed += 0.005;
	pickupable = false;
	if (image_xscale > 0.1){
		image_xscale -= 0.01;
		image_yscale -= 0.01;
	}
	else{
		global.money += worth;
		instance_destroy();
	}	
}