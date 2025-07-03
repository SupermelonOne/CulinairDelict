if (random_range(0, 100) < dropChance){
	instance_create_depth(x+8, y+8, 0, ItemObj);	
}
else if (random_range(0, 100) < dropChance){
	instance_create_depth(x+8, y+8, 0, EnergyCollectableObj);
}
else if (random_range(0, 100) < dropChance/5){
	instance_create_depth(x+8, y+8, 0, UsableItem);
}