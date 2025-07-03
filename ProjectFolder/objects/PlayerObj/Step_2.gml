/// @description debug functions

if (keyboard_check_pressed(ord("Y"))){
	SpawnItem(3, 4, x, y, false, EnergyCollectableObj);	
}
if (keyboard_check_pressed(ord("T"))){
	instance_create_depth(x, y, 0, ItemObj);	
}
if (keyboard_check_pressed(ord("L")) && keyboard_check(vk_shift)){
	global.dungeonLevel--;
}
else if (keyboard_check_pressed(ord("L"))){
	global.dungeonLevel++;
}
else if (keyboard_check_pressed(ord("K"))){
	global.p1Health++;
}

if (keyboard_check(ord("O"))){
	room_goto(Elevator);
	global.p1Health = 4;
}