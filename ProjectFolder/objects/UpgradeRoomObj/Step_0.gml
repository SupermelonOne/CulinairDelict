if (distance_to_object(global.player) < 8){
	if (keyboard_check_pressed(ord("E"))){
		room_goto(UpgradeScreen);
	}
	//global.ePrompt = true;
}
else{
	//global.ePrompt = false;	
}