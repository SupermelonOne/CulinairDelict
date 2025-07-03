//show_debug_message("UPGRADE PRESSED");

if (global.money >= currentUpgradeCost){
	global.money -= currentUpgradeCost;
	event_user(0);
}