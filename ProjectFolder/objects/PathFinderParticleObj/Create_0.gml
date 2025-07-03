if (variable_instance_exists(id, "path")){
	path_start(path, 0.5, path_action_stop, true);
	hasPath = true;
}
else{
	direction = image_angle;
	speed = 0.5;
	hasPath = false;
}