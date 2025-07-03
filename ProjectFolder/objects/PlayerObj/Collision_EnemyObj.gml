if (invincibleTimer <= 0 && !dodging){
	invincibleTimer = invincibleTime;
	stunTimer = stunTime;
	awayVector.set(x - other.x, y-other.y);
	awayVector.normalize();
	takenKnockback = other.knockBack;
	global.p1Health -= other.damage;
}