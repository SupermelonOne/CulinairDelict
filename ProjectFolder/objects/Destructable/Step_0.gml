
if (shakeTimer > 0){
	shakeTimer--;
	event_user(0);
}
else{
	beingHit = false;
}

//SHIT CODED BLOCK DAMAGE
var damage_collider = instance_place(x,y,playerHitbox);
if (damage_collider != noone){
	if (!beingHit){
		myHealth -= damage_collider.parentObj.damage;
		shakeTimer = 5;
		event_user(0);
		event_user(1);
		beingHit = true;
	}
}
else{
	beingHit = false;
}

damage_collider = instance_place(x,y,ExplosionAreaObj);
if (damage_collider != noone){
	myHealth -= damage_collider.exploDamage;
	shakeTimer = 5;
	event_user(0);
	event_user(1);
	beingHit = true;
}

if (myHealth <= 0){
	mp_grid_clear_cell(global.grid, x/global.cell_size, y/global.cell_size);	
	instance_destroy();
}