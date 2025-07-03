/// @description Upgradable variables

	
if (!variable_global_exists("obtainedUpgrades")){
	global.obtainedUpgrades = [InventorySizeUpgrObj, MoveSpeedUpgrObj, SwordDamUpgrObj, SwordTimeUpgrObj];
}

	


if (!variable_global_exists("p1SwordSize")){
	global.p1SwordSize = 0.6;	
}
if (!variable_global_exists("p1InvSize")){
	global.p1InvSize = 3;
}
if (!variable_global_exists("p1KatanaDamage")){
	global.p1KatanaDamage = 0.25;
}
if (!variable_global_exists("p1MoveSpeed")){
	global.p1MoveSpeed = 1;
}
if (!variable_global_exists("p1KatanaCooldown")){
	global.p1KatanaCooldown = 40;
}
if (!variable_global_exists("haveBackupBattery")){
	global.haveBackupBattery = false;
	global.backupEnergyMax = 0;
}
if (!variable_global_exists("p1KnockBack")){
	global.p1KnockBack = 1;
}
if (!variable_global_exists("p1ProjectileUnlocked")){
	global.p1ProjectileUnlocked = false;
	global.p1ProjectileTime = 16;
}
if (!variable_global_exists("p1CompassUnlocked")){
	global.p1CompassUnlocked = false;	
	global.p1CompassUpgrade = 0;
}

// maak jezelf upgraded op start
//event_user(1);