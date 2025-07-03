//load the upgrade variables
event_user(0);

if (!variable_global_exists("dungeonIsActive")){
	global.dungeonIsActive = false;	
}
if (!variable_global_exists("RestartDungeon")){
	global.RestartDungeon = true;	
}
if (!variable_global_exists("currentDugeon")){
	global.currentDungeon = Room1;
}
if (!variable_global_exists("dungeonLevel")){
	global.dungeonLevel = 1;
}
if (!variable_global_exists("showLoading")){
	global.showLoading = false;
}
if (!variable_global_exists("totalSteps")){
	global.totalSteps = 4;
	global.loadStep = 0;
}
if (!variable_global_exists("bossActive")){
	global.bossActive = false;
}
global.chestArray = [];


global.cell_size = 16;

global.grid_width = ceil(room_width/global.cell_size);
global.grid_height = ceil(room_height/global.cell_size);



//event_user(0);
//event_user(1);
//event_user(2);

//window_set_fullscreen(true);
window_set_size(1280, 720);


if (instance_exists(GenerateDungeon) || instance_exists(BACKUPBADDUNGEON)){
	global.loaded = false;
}
else{
	global.loaded = true;	
}

gpu_set_texfilter(false);