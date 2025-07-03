image_angle += rotation;
image_xscale -= shrinkAmount;
image_yscale -= shrinkAmount;
if (image_xscale <= 0){
	instance_destroy();
}
y+= verSpeed;
verSpeed /= 1.01;
x+= horSpeed;
horSpeed /= 1.01;