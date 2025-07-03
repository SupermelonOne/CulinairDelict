if (sprite_index != BeanBossWalk){
	moveTimer = irandom_range(moveTimeMin, moveTimeMax);
}
sprite_index = BeanBossWalk;
moveTimer--;
if (moveTimer >=0){
	pathTimer++;
	if (pathTimer > 5){
		pathTimer = 0;
	}
	if (pathTimer > 4){
		
	var foundPlayer = mp_grid_path(global.grid, path, x, y, PlayerObj.x, PlayerObj.y, true);
		if (foundPlayer){
			image_speed = 1;
			path_start(path, moveSpeed, path_action_stop, false);
		}
		else{
			image_speed = 0;
			image_index = 0;
		}
	}
}
else if (image_index >= 0 && image_index < 1){
	image_speed = 1;
	path_end();
	if (random_range(0, 100) < 35){
		currentPhase = bossPhase.throwProjectile;	
	}
	else{
		currentPhase = bossPhase.wait;	
	}
}

if (((image_index >= 0 && image_index < 1) || (image_index >= 2 && image_index < 3))){
	if (!stepSoundPlayed){
		event_user(12);	
	}
	stepSoundPlayed = true
}
else{
	stepSoundPlayed = false;	
}