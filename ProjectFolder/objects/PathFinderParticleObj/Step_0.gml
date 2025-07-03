image_alpha -= 0.01;
if (image_alpha <= 0){
	instance_destroy();	
}

if (hasPath){
	var targetRotation = direction;
	var _diff = angle_difference(targetRotation, image_angle);
	image_angle += _diff * 0.1;
}
else{
		
}