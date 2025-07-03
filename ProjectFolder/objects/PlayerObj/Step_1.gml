DepthHandler();
if (moveDirection.x > 0){
	image_xscale = 1;
}
else if (moveDirection.x < 0){
	image_xscale = -1;
}

if (pickingUpTimer > 0){
	sprite_index = PlayerPickup;
}
else if (moveDirection.get_magnitude() > 0 && !dodging){
	sprite_index = PlayerWalk;
	global.playerMoving = true;
}
else if (!dodging){
	sprite_index = PlayerIdle1;
	global.playerMoving = false;
}
if (dodging){
	sprite_index = PlayerDodgeroll;
}
if (dodging && image_index >= 6){
	dodgeStunTimer = dodgeStunTime;
	dodging = false;
	global.disableP1Movement = false;
}

if (!footHitGround && (floor(image_index) == 0 || floor(image_index) == 2) && sprite_index == PlayerWalk){
	audio_play_sound(footstep1, -1, false, ,, random_range(0.6, 1.0));
	instance_create_depth(x, y+8, 0, StepParticle);
	footHitGround = true;
}
if (floor(image_index) != 0 && floor(image_index) != 2){
	footHitGround = false;	
}
