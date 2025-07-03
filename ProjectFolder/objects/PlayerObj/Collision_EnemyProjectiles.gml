if (invincibleTimer <= 0 && !dodging && !other.destroySelf){
	invincibleTimer = invincibleTime;
	stunTimer = stunTime;
	awayVector.copy(other.moveDirection);
	awayVector.normalize();
	takenKnockback = other.knockBack;
	global.p1Health -= other.damage;
	other.destroySelf = true;
}