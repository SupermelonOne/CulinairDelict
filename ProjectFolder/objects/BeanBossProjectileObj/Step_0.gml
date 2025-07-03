if (image_index > 2){
	image_index = 2;	
}
y += fallSpeed;

if (phase == 0){
	fallSpeed -= 0.1;
}
if (phase == 1){
	fallSpeed += 0.05;
	if (y > destinationY){
		splat = true;
	}
}

if (y < 0 && phase == 0){
	phase = 1;
	fallSpeed = -1;
	x = global.player.x;
	destinationY = global.player.y - 16;
	image_yscale = -1;
}

if (splat && phase == 1){
	image_yscale = 1;
	fallSpeed = 0;
	image_index = 0;
	sprite_index = BeanBossFloorSplatSprt;
	depth = 99;
	phase = 2;
}
if (splat && image_xscale> 0 && phase == 3){
	image_xscale-= 0.01;
	image_yscale -= 0.005;
}
if (phase == 2){
	timer--;
	if (timer <= 0){
		phase = 3;	
	}
}
if (image_xscale <= 0){
	instance_destroy();
}