if (sprite_index != BeanBossDieSprt){
	image_index = 0;
}
sprite_index = BeanBossDieSprt;

if (image_index >= 7){
	instance_destroy();
	global.bossActive = false;
}