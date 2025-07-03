if (!beingHit){
	shakeTimer = shakeTime;
	myHealth -= other.parentObj.damage;
	awayVector.set(x - other.x, y - other.y);
	beingHit = true;
	checked = false;
	
	instance_create_depth(x, y, id.depth-1, EnemyParticleObj);
	instance_create_depth(x+8, y, id.depth-1, EnemyParticleObj);
	instance_create_depth(x, y+8, id.depth-1, EnemyParticleObj);
	instance_create_depth(x+8, y+8, id.depth-1, EnemyParticleObj);
	audio_play_sound(rockHitSnd, 0, false, ,, random_range(1.4, 1.7));
}