path_speed = moveSpeed;
if (speedGoingUp){
	moveSpeed += acceleration;	
}
else{
	moveSpeed-= acceleration;	
}
if (moveSpeed > maxMoveSpeed){
	speedGoingUp = false;	
}
if (moveSpeed < minMoveSpeed){
	speedGoingUp = true;
}
if (acceleration < maxAcceleration){
	acceleration += 0.001;	
}
if (maxMoveSpeed < maxMaxMoveSpeed){
	maxMoveSpeed += 0.01;	
}
