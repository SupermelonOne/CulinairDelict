DepthHandler();
if (myHealth <= 0){
	instance_destroy();	
}
if (!dontChangeAngle){
	if (direction > 90 && direction < 270){
		image_xscale = -1	
	}
	else{
		image_xscale = 1;	
	}
}
if (distance_to_object(PlayerObj) < visionRange && !beingHit){
	pathTimer++;
	if (pathTimer > 20){
		pathTimer = 0;
	}
	if (pathTimer > 19){
		
	var foundPlayer = mp_grid_path(global.grid, path, x, y, PlayerObj.x, PlayerObj.y, typeOfPathing);
		if (foundPlayer){
			path_start(path, moveSpeed, path_action_stop, false);
			image_speed = 1;
		}
	}
}

if (beingHit){
	path_end();
}

if (shakeTimer > 0){
	shakeTimer--;	
	event_user(0);
}
else if (!checked){
	beingHit = false;
	move_towards_point(0, 0, 0);
}

var other_enemy = instance_place(x,y,EnemyObj);
if (other_enemy == noone){
	other_enemy = instance_place(x,y,BossObj);
}
if (other_enemy != noone){
	//path_end();
	if (x == other_enemy.x && y == other_enemy.y){
		x += choose(-1, 0, 1);
		y += choose(-1, 0, 1);
	}

	var _moveDirection = new vector(x - other_enemy.x, y - other_enemy.y);
	_moveDirection.normalize();
	var _moveSpeed = 1;

	if (place_meeting(x + _moveDirection.x * _moveSpeed, y, Obstacle)){
		_moveSpeed += _moveSpeed * abs(_moveDirection.x);
		_moveDirection.x = 0;
	}
	if (place_meeting(x, y + _moveDirection.y * _moveSpeed, Obstacle)){
		_moveSpeed += _moveSpeed * abs(_moveDirection.y);
		_moveDirection.y = 0;
	}
	
	x += _moveDirection.x * _moveSpeed;
	y += _moveDirection.y * _moveSpeed;
	dontChangeAngle = true;
}
else{
	dontChangeAngle = false;	
}
