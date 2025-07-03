image_index = 1;
if (!variable_instance_exists(id, "moveVector")){
	moveVector = new vector(0,1);
}
moveVector.normalize();
if (!variable_instance_exists(id, "moveSpeed")){
	moveSpeed = 2;
}
