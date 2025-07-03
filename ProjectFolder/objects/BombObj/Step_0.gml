DepthHandler();
if (image_index >=4){
	instance_destroy();	
}

	if (place_meeting(x + moveVector.x * moveSpeed, y, Obstacle)){
		moveSpeed += moveSpeed * abs(moveVector.x);
		moveVector.x = 0;
	}
	if (place_meeting(x, y + moveVector.y * moveSpeed, Obstacle)){
		moveSpeed += moveSpeed * abs(moveVector.y);
		moveVector.y = 0;
	}
	x += moveVector.x * moveSpeed;
	y += moveVector.y * moveSpeed;

moveSpeed *= 0.96;