global.player = id;
global.playerMoving = false;
moveToDoor = false;
global.closestChest = pointer_null;
global.disableP1Movement = false;

dodging = false;
dodgeStunTimer = 0;
dodgeStunTime = 60;

if (!variable_global_exists("p1Inventory")){
	//first value is the item, second value is the item's "worth"
	global.p1Inventory = [[0,0],[0,0],[0,0]];
}
if (!variable_global_exists("money")){
	global.money = 0;	
}

if (room != Elevator && global.p1CompassUnlocked){
	instance_create_depth(x, y, 0, PathFinderObj);	
}

if (!variable_global_exists("energy")){
	global.energy = 0;	
	global.maxEnergy = 100;
	global.haveBackupBattery = false;
	global.backupEnergy = 0;
	global.backupEnergyMax = 0;
	global.localEnergy = 0;
}
energyBarLeft = 0;
energyBarRight = 0;
enBarForNumber = 0;
bossBarLeft = 0;
bossBarRight = 0;

global.ePrompt = false;
ePromptSize = 0;

global.p1Selected = 0;


instance_create_depth(x, y, -1000, ScreenTransition);

moveDirection = new vector(0, 0);

playerAcceleration = 0.2;
if (!variable_global_exists("p1Health")){
	global.p1MaxHealth = 5;
	global.p1Health = 3;
}

katanaDamage = 1;

katanaStruct = {
	player : id	
}
playerID = 1;

instance_create_depth(x, y, 0, KatanaObj, katanaStruct);

moveSpeed = 0;
sprintSpeed = 1;

pickingUpTimer = -1;
pickUpTime = 60;
global.p1Collecting = false;

knockback = 1;

invincibleTime = 60;
invincibleTimer = invincibleTime;
stunTimer = 0;
stunTime = 20;
awayVector = new vector(0,0);
takenKnockback = 0;

//PAS OP HIER STAAT EEN HARDCODE
global.screenWidth = camera_get_view_width(view_camera[0]);
global.screenHeight = camera_get_view_height(view_camera[0]);
slotDist = 0;

//random_set_seed(12300814);
if (room != Elevator && room != DeadRoom){
	room_persistent = true;	
	global.currentDungeon = room;
}


footHitGround = false;