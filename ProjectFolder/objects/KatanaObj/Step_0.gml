
pointDirection.set((mouse_x - player.x), (mouse_y - player.y));
pointDirection.normalize();

x = player.x + pointDirection.x * distance;
y = player.y + pointDirection.y * distance;

DepthHandler();

image_angle = pointDirection.get_direction() + stand;


var attackB = mouse_check_button(mb_left);
if (coolDownTimer > 0){
	coolDownTimer--;	
}
if (coolDownTimer ==0){
	coolDownTimer = -1;	
	image_alpha = 1;
}

if (attackB && !attacking && coolDownTimer == -1){
	attacking = true;
}

if (attacking){
	var katanaPartStruct = {
		//sprite_index : id.sprite_index,
		parentObj : id,
		image_yscale : id.image_yscale,
		image_xscale : id.image_xscale,
		image_angle : id.image_angle
	}
	instance_create_depth(x, y, -99, KatanaParticleObj, katanaPartStruct);
	if (stage == 0)
	{
		stand -= swordSpeed;
		if (stand <= -standDistance){
			stage = 1;
			stand = -standDistance;
			attacking = false;
			image_yscale *= -1;
			coolDownTimer = coolDownTime;
			image_alpha = 0.7;
			event_user(0);
			
			if (global.p1ProjectileUnlocked){
				projectileTimer--;
				if (projectileTimer <= 0){
					projectileTimer = projectileTime;
					var directionVector = new vector(mouse_x - player.x, mouse_y - player.y);
					directionVector.normalize();
					variable_struct_set(katanaPartStruct, "moveVector", directionVector);
					variable_struct_set(katanaPartStruct, "image_angle", directionVector.get_angle_deg()/2);
					instance_create_depth(player.x, player.y, 0, KatanaProjectileObj, katanaPartStruct);
				}
			}
		}
	}
	else if (stage == 1) {
		stand += swordSpeed;
		if (stand >= standDistance){
			stage = 0;
			stand = standDistance;
			attacking = false;
			image_yscale *= -1;
			coolDownTimer = coolDownTime;
			image_alpha = 0.7;
			event_user(0);

			if (global.p1ProjectileUnlocked){
				projectileTimer--;
				if (projectileTimer <= 0){
					projectileTimer = projectileTime;
					var directionVector = new vector(mouse_x - player.x, mouse_y - player.y);
					directionVector.normalize();
					variable_struct_set(katanaPartStruct, "moveVector", directionVector);
					variable_struct_set(katanaPartStruct, "image_angle", directionVector.get_angle_deg()/2);
					instance_create_depth(player.x, player.y, 0, KatanaProjectileObj, katanaPartStruct);
				}
			}
		}
	}
}