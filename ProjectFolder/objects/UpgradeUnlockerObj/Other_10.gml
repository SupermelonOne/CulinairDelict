/// @description Collect action
if (!array_contains(global.obtainedUpgrades, myUpgradeNum)){
	array_push(global.obtainedUpgrades, myUpgradeNum);
}

if (myUpgradeNum == ProjectileUpgradeObj){
	global.p1ProjectileUnlocked = true;
}
if (myUpgradeNum == CompassUpgrObj){
	global.p1CompassUnlocked = true;
}