move_towards_point(destination.x+8, destination.y, moveSpeed);
moveSpeed += 0.01;
if (place_meeting(x, y, Collector)){
	instance_destroy();
}
