image_alpha -= 0.01;
image_xscale -= 0.001;
image_yscale -= 0.001;
if (image_alpha <= 0){
	instance_destroy();	
}
//DepthHandlerOff(1);
y += random_range(-0.1, 0.02);
