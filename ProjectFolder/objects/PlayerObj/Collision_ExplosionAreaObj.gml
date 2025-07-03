if (other.timer <= other.activeTime){
	invincibleTimer = invincibleTime;
	stunTimer = stunTime;
	awayVector.set(x - other.x, y-other.y);
	awayVector.normalize();
	takenKnockback = other.knockBack;
	global.p1Health -= floor(other.exploDamage / 5);
}