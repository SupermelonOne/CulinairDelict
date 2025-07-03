

if (global.loaded || global.loadStep == 3){
	global.loadStep = 4;
	instance_destroy();
}
if (room == Elevator){
	global.loadStep = 0;
}
if (global.RestartDungeon){
	global.showLoading = true;	
}