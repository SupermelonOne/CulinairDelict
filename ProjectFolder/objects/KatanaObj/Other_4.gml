if (abs(image_xscale) != global.p1SwordSize){
	if (image_xscale > 0){
		image_xscale = global.p1SwordSize;
	}
	else{
		image_xscale = -global.p1SwordSize;
	}
	if (image_yscale > 0){
		image_yscale = global.p1SwordSize;
	}
	else{
		image_yscale = -global.p1SwordSize;
	}
}

if (damage != player.katanaDamage){
	damage = player.katanaDamage;	
}

//SHIT CODED 
if (coolDownTime != global.p1KatanaCooldown){
	coolDownTime = global.p1KatanaCooldown;	
}

if (projectileTime != global.p1ProjectileTime){
	projectileTime = global.p1ProjectileTime;	
}