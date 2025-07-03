if (global.player != id){
	global.player = id;
}
if (room != Elevator && global.RestartDungeon){
	RestartDungeon();
}

//INVENTORY SIZE
while (global.p1InvSize > array_length(global.p1Inventory)){
	array_push(global.p1Inventory, [0,0]);
}
while (global.p1InvSize < array_length(global.p1Inventory)){
	array_delete(global.p1Inventory, array_length(global.p1Inventory) - 1, 1);
}

//KATANA DAMAGE
if (katanaDamage != global.p1KatanaDamage){
	katanaDamage = global.p1KatanaDamage;	
}

if (sprintSpeed != global.p1MoveSpeed){
	sprintSpeed = global.p1MoveSpeed;
}
if (knockback != global.p1KnockBack){
	knockback = global.p1KnockBack;	
}

if (room == DeadRoom){
	global.p1Health = 3;	
}