
/*
for(var i = 0; i < array_length(global.obtainedUpgrades); i++){
	if (!instance_exists(UpgradeObjectSort(global.obtainedUpgrades[i]))){
		instance_create_depth(placeAt + i * distanceBetweenButtons, 80, 0, UpgradeObjectSort(global.obtainedUpgrades[i]));
	}
}
*/
//show_debug_message(global.obtainedUpgrades);

for(i = 0; i < array_length(global.obtainedUpgrades); i++){
	if (!instance_exists(global.obtainedUpgrades[i])){
		instance_create_depth(placeAt, 80, -1, global.obtainedUpgrades[i]);	
		placeAt+= distanceBetweenButtons;
	}
	
}

show_debug_message(" also running the end of the room?" );
