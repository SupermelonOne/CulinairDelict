switch(global.p1SwordSize){
	case upgradeValue1:
		currentUpgrade = 1;
		currentUpgradeCost = upgrade2Cost;
		break;
	case upgradeValue2:
		currentUpgrade = 2;
		currentUpgradeCost = upgrade3Cost;
		break;
	case upgradeValue3:
		currentUpgrade = 3;
		currentUpgradeCost = upgrade4Cost;
		break;
	case upgradeValue4:
		currentUpgrade = 4;
		currentUpgradeCost = 99999999;
		break;
	default:
		currentUpgrade = 0;
		currentUpgradeCost = upgrade1Cost;
		break;
}
upgradeText = string_concat(upgradeExplenation, "\nCos: ", currentUpgradeCost);