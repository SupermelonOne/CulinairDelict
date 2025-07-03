if (!global.playerMoving){
	pathTimer ++;
	if (pathTimer > 120	&& global.p1CompassUpgrade == 1){
		pathTimer = 0;
		x = global.player.x;
		y = global.player.y;
		var foundPlayer = mp_grid_path(global.grid, path, PlayerObj.x, PlayerObj.y, DoorObj.x, DoorObj.y, true);
		if (foundPlayer){
		
			path_start(path, 1, path_action_stop, true);
			targetRotation = direction;
		
			var arrowPartStruct = {
				path : id.path,
				image_angle : id.targetRotation
			}
			instance_create_depth(x, y, -100, PathFinderParticleObj, arrowPartStruct);
		}
	}
	else if (pathTimer > 120){
		x = global.player.x;
		y = global.player.y;
		pathTimer = 0;
		targetRotation = point_direction(x, y, DoorObj.x, DoorObj.y);
		
		var arrowPartStruct = {
			image_angle : id.targetRotation
		}
		instance_create_depth(x, y, -100, PathFinderParticleObj, arrowPartStruct);
	}
}
else{
	pathTimer = 0;	
}
/*
var _diff = angle_difference(targetRotation, image_angle);
image_angle += _diff * 0.1;
*/