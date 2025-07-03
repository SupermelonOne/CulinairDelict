if (!beingHit){
	if (other != BeanBossProjectileObj || other.phase >= 3){
		shakeTimer = shakeTime;
		myHealth -= 1;
		awayVector.set(x - (other.x + 8), y - (other.y + 8));
		beingHit = true;
		checked = false;
	
		instance_create_depth(x, y, id.depth-1, EnemyParticleObj);
		instance_create_depth(x+8, y, id.depth-1, EnemyParticleObj);
		instance_create_depth(x, y+8, id.depth-1, EnemyParticleObj);
		instance_create_depth(x+8, y+8, id.depth-1, EnemyParticleObj);
		audio_play_sound(rockHitSnd, 0, false, ,, random_range(1.4, 1.7));
	}
}