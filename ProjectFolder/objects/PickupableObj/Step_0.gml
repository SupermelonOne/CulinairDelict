if (pickupable && !global.p1Collecting && place_meeting(x, y, PlayerObj) && global.player.pickingUpTimer > 0 && !collected){
	if (collectCheck()){
		global.p1Collecting = true;
		event_user(0);
		collected = true;
	}
}
else{
	DepthHandler();
}

if (collected){
	move_towards_point(global.player.x, global.player.y-4, 1);
	image_xscale-= 0.1;
	image_yscale-= 0.1;
	depth = global.player.depth - 1;
}
if (image_xscale <= 0){
	instance_destroy();
}

if (dropped){
	if (checkWalls){
		if (place_meeting(x + moveVector.x * moveSpeed, y, Obstacle)){
			moveSpeed += moveSpeed * abs(moveVector.x);
			moveVector.x = 0;
		}
		if (place_meeting(x, y + moveVector.y * moveSpeed, Obstacle)){
			moveSpeed += moveSpeed * abs(moveVector.y);
			moveVector.y = 0;
		}
	}
	x += moveVector.x * moveSpeed;
	y += moveVector.y * moveSpeed;
	moveSpeed -= 0.1;
	if (moveSpeed <= 0.001){
		dropped = false;
	}
}

