if (invincibleTimer <= 0 && !dodging && other.image_alpha > 0.2){
	if (other != BeanBossProjectileObj || other.phase >= 3){
		invincibleTimer = invincibleTime;
		stunTimer = stunTime;
		awayVector.set(x - (other.x + 8), y - (other.y + 8));
		awayVector.normalize();
		takenKnockback = 5;
		global.p1Health -= 1;
	}
}