if (sprite_index != BeanBossSquishSprt){
	image_index = 0;
	alreadyThrown = false;
}
sprite_index = BeanBossSquishSprt;

if (image_index >= 4){
	if (!alreadyThrown){
		instance_create_depth(x, y - 29, 0, BeanBossProjectileObj);
	}
	alreadyThrown = true;
}
else{
	alreadyThrown = false;
}
if (image_index > 16){
	currentPhase = bossPhase.wait;	
}