enum bossPhase 
{
	wait = 0,
	throwProjectile = 1,
	moveRandom = 2,
	moveToPlayer = 3,
	spawnMinions = 4,
	shootSplash = 5,
	die = 6,
	spawnMinionsLeft = 20,
	throwProjectileLeft = 21
	
}

actionList = [
bossPhase.throwProjectile,
bossPhase.throwProjectile,
bossPhase.throwProjectile,
bossPhase.throwProjectile,
bossPhase.moveToPlayer,
bossPhase.moveToPlayer,
bossPhase.moveToPlayer,
bossPhase.spawnMinions,
bossPhase.spawnMinions,
bossPhase.shootSplash,
bossPhase.shootSplash
];
actionOrder = [];
event_user(9);

path = path_add();

currentPhase = bossPhase.wait;
timeMin = 2;
timeMax = 30;
timer = 60;

splashTime = 20;
splashTimer = splashTime;

alreadyThrown = false;



vectorToPlayer = new vector(0,0);

myHealth = 50;
moveSpeed = 0.5;
damage = 1;
knockBack = 20;

moveTimeMin = 60;
moveTimeMax = 120;
moveTimer = 0;


stepSoundPlayed = false;	
spritePos = new vector(x,y);
checked = true;
beingHit = false;
pathTimer = 0;
shakeTime = 5;
shakeTimer = 0;
awayVector = new vector(0,0);

global.bossActive = true;
global.bossHealth = myHealth;
global.bossHealthMax = myHealth;