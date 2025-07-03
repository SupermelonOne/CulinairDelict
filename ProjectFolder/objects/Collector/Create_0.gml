if (!variable_global_exists("money")){
	money = 0;
}
DepthHandler();
suckPartStruct = {
	parentObj : id	
}
instance_create_depth(x, y - global.cell_size, 0, SuckPartSpawnObj, suckPartStruct);
instance_create_depth(x, y, 0, SuckHitboxObj);
textToDisplay = "";
textToDisplay2 = "";