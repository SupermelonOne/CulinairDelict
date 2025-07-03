instance_destroy(other);
	if (!beingHit){
		myHealth -= other.parentObj.damage;
		shakeTimer = 5;
		event_user(0);
		event_user(1);
		beingHit = true;
	}