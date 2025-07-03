if (!variable_instance_exists(id, "player")){
	damage = global.player.damage;
}
else{
	damage = player.katanaDamage;
}

distance = 4;
pointDirection = new vector(1, 0);

stage = 0;
standDistance = 64;
stand = standDistance;
swordSpeed = 10;

coolDownTimer = -1;
coolDownTime = 30;

attacking = false;

image_xscale = global.p1SwordSize;
image_yscale = global.p1SwordSize;

projectileTimer = 0;
projectileTime = global.p1ProjectileTime;