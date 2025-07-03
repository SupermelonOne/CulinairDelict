distanceToPlayer = distance_to_object(global.player);
if (distanceToPlayer < global.closestChest.distanceToPlayer){
	global.closestChest = id;	
}
if (keyboard_check(ord("E")) && distance_to_object(global.player) < 8 && !opened && global.closestChest == id){
	image_index = 1;
	opened = true;
	event_user(0);
}