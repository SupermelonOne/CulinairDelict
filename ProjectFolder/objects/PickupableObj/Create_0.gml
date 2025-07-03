collected = false;
pickupable = true;
refundable = true;
checkWalls = true;


if (!variable_instance_exists(id, "dropped")){
	dropped = false;	
}

event_user(1);

if (!dropped){

}
else{
	moveVector.normalize();	
	newMoveSpeed = 0;
}
if (!variable_instance_exists(id, "moveVector")){
	moveVector = new vector(0,0);	
}