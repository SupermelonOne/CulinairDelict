if (myHealth <= 0){
	instance_destroy();	
}


if (activated && !beingHit){
	pathTimer++;
	if (pathTimer > 20){
		pathTimer = 0;
	}
	if (pathTimer > 19){
		
	var foundPlayer = mp_grid_path(global.grid, path, x, y, PlayerObj.x, PlayerObj.y, true);
		if (foundPlayer){
			path_start(path, moveSpeed, path_action_stop, false);
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