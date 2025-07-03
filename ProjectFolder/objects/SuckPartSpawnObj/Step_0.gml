
if (choose(1,2,2,2) == 1){
	var randomX = random_range(x-8, x+ 24);
	var randomY = random_range(y, y+16);
	instance_create_depth(randomX, randomY, 0, WindParticleObj, suckPartStruct);
}