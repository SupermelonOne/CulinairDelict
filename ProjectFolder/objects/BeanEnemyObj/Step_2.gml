if (thrown){
	image_angle += 5;
	sprite_index = BeanEnemyThrownSprt;
	path_speed = 0;

		if (place_meeting(x + moveDirection.x * moveSpeed, y, Obstacle)){
			moveSpeed += moveSpeed * abs(moveDirection.x);
			moveDirection.x = 0;
		}
		if (place_meeting(x, y + moveDirection.y * moveSpeed, Obstacle)){
			moveSpeed += moveSpeed * abs(moveDirection.y);
			moveDirection.y = 0;
		}
	
	x += moveDirection.x * moveSpeed;
	y += moveDirection.y * moveSpeed;
	moveSpeed -= 0.1;
	if (moveSpeed <= 0.001){
		thrown = false;
		moveSpeed = 0.5;
		turnToZero = true;
	}
}
else{
	sprite_index = BeanEnemySprt;
	path_speed = 0.5;
}

if (turnToZero){
	var targetRotation = 0;
	var _diff = angle_difference(targetRotation, image_angle);
	image_angle += _diff * 0.1;
	if (image_angle < 1 && image_angle > -1){
		turnToZero = false;
		image_angle = 0;
	}
}