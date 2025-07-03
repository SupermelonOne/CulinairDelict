/// @description UPGRADE FUNCTION
switch (currentUpgrade){
	case 0:
		currentUpgrade++;
		currentUpgradeCost = upgrade2Cost;
		upgradeText = "Fully upgraded";
		event_user(1);
		break;
	case 1:
		currentUpgrade++;	
		currentUpgradeCost = upgrade3Cost;
		upgradeText = "Fully upgraded";
		event_user(2);
		break;
	case 2:
		currentUpgrade++;	
		currentUpgradeCost = upgrade4Cost;
		upgradeText = "Fully upgraded";
		event_user(3);
		break;
	case 3:
		currentUpgrade++;
		upgradeText = "Fully upgraded";
		currentUpgradeCost = 9999999;
		event_user(4);
		break;
	case 4:
		break;
		
}
