DepthHandler();
global.bossHealth = myHealth;

if (currentPhase == bossPhase.wait){
	sprite_index = BeanBossIdleSprt;
	timer--;	
}
if (myHealth <= 0){
	currentPhase = bossPhase.die;
}

if (timer <= 0){
	timer = irandom_range(timeMin, timeMax);
	if (array_length(actionOrder) == 0){
		event_user(9);	
	}
	switch(array_shift(actionOrder)){
		case 4:
			if (global.player.x > x){
				currentPhase = bossPhase.spawnMinionsLeft;	
			}
			else{
				currentPhase = bossPhase.spawnMinions;	
			}
			break;
		case 3:
			currentPhase = bossPhase.moveToPlayer;
			break;
		case 1:
			if (global.player.x > x){
				currentPhase = bossPhase.throwProjectileLeft;
			}
			else{
				currentPhase = bossPhase.throwProjectile;	
			}
			break;
		case 5:
			currentPhase = bossPhase.shootSplash;
			break;
	}
}

if (currentPhase == bossPhase.throwProjectile){
	event_user(1);	
}
if (currentPhase == bossPhase.moveToPlayer){
	event_user(2);
}
if (currentPhase == bossPhase.spawnMinions){
	event_user(3);
}
if (currentPhase == bossPhase.shootSplash){
	event_user(4);
}
if (currentPhase == bossPhase.spawnMinionsLeft){
	event_user(5);
}
if (currentPhase == bossPhase.throwProjectileLeft){
	event_user(6);
}
if (currentPhase == bossPhase.die){
	event_user(8);
}



if (beingHit){
	path_end();
}

if (shakeTimer > 0){	
	event_user(0);
}
else if (!checked){
	beingHit = false;
	move_towards_point(0, 0, 0);
}