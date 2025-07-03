if (!variable_instance_exists(id, "moveDirection")){
	moveDirection = new vector(0,1);	
}
if (!variable_instance_exists(id, "moveSpeed")){
	moveSpeed = 2;
}
if (!variable_instance_exists(id, "damage")){
	damage = 1;
}
if (!variable_instance_exists(id, "knockBack")){
	knockBack = 20;
}
if (!variable_instance_exists(id, "destroySelf")){
	destroySelf = false;
}

event_user(0);