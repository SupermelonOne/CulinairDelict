/// @description startup
//stats
myHealth = 2;
visionRange = 25;
moveSpeed = 1;
activated = false;
image_index = 1;

damage = 1;
knockBack = 20;

typeOfPathing = choose(0,1);

path = path_add();
if (!variable_global_exists("timeSkip")){
	global.timeSkip = 0;
}

global.timeSkip+= irandom_range(1, 5);

if (global.timeSkip > 60){
	global.timeSkip = irandom_range(0, 59);
}
pathDelay = global.timeSkip;
pathTimer = 0;

spritePos = new vector(id.x, id.y);
shakeTimer = 0;
shakeTime = 5;

awayX = 0;
awayY = 0;
awayVector = new vector(0,0);

beingHit = false;
checked = true;