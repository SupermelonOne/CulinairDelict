if (currentPhase == bossPhase.throwProjectile && sprite_index != BeanBossThrowSprt){
	image_index = 0;
	sprite_index = BeanBossThrowSprt;
}

if (sprite_index == BeanBossThrowSprt){
	splashTimer--;	
}
if (sprite_index == BeanBossThrowSprt && image_index > 3 && image_index < 10 && splashTimer <= 0){
	splashTimer = splashTime;
	event_user(11);	
}

if (sprite_index == BeanBossThrowSprt && (image_index > 13 && image_index < 14)){
	if (!alreadyThrown){
		vectorToPlayer = new vector(global.player.x - (x-16), global.player.y - y);
		vectorToPlayer.normalize();
		var projectileStruct = {
			moveDirection : new vector(id.vectorToPlayer.x, id.vectorToPlayer.y)
		}
		instance_create_depth(x-16, y, 0, BeanProjectileObj, projectileStruct);
		vectorToPlayer.rotate(20);
		projectileStruct = {
			moveDirection : new vector(id.vectorToPlayer.x, id.vectorToPlayer.y)
		}
		instance_create_depth(x-16, y, 0, BeanProjectileObj, projectileStruct);
		vectorToPlayer.rotate(-40);
		projectileStruct = {
			moveDirection : new vector(id.vectorToPlayer.x, id.vectorToPlayer.y)
		}
		instance_create_depth(x-16, y, 0, BeanProjectileObj, projectileStruct);
		event_user(10);
	}
	alreadyThrown = true;
}
else{
	alreadyThrown = false;	
}

if (sprite_index == BeanBossThrowSprt && image_index > 15.5){
	currentPhase = bossPhase.wait;	
}