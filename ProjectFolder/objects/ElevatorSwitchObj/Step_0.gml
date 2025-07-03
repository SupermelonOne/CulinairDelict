

if (global.energy >= global.maxEnergy && distance_to_object(global.player) < 8){
	if (keyboard_check(ord("E"))){
		global.RestartDungeon = true;
		global.closeDoor = true;
		global.energy = 0;
		global.dungeonLevel++;
	}
	//global.ePrompt = true;
}
else{
	//global.ePrompt = false;	
}