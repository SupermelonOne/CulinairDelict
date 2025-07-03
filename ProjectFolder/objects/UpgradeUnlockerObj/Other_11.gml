/// @description instantiation
if (!variable_instance_exists(id, "myUpgradeNum")){
	if (irandom_range(0, 100) < 20 && !array_contains(global.obtainedUpgrades, ProjectileUpgradeObj)){
		myUpgradeNum = ProjectileUpgradeObj;
	}
	else if (irandom_range(0, 100) < 50 && !array_contains(global.obtainedUpgrades, SwordKnockBackUpgrObj)){
		myUpgradeNum = SwordKnockBackUpgrObj;
	}
	else if (irandom_range(0, 100) < 50 && !array_contains(global.obtainedUpgrades, SwordSizeUpgradeObj)){
		myUpgradeNum = SwordSizeUpgradeObj;
	}
	else if (irandom_range(0, 100) < 50 && !array_contains(global.obtainedUpgrades, CompassUpgrObj)){
		myUpgradeNum = CompassUpgrObj;
	}
	else{
		instance_destroy();	
	}
}
function collectCheck(){
	return true;
}