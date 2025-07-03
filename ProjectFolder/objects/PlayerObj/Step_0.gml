if (global.p1Health <= 0){
	room_goto(DeadRoom);	
}
if (invincibleTimer > 0){
	invincibleTimer--;	
	if (image_alpha > 0){
		image_alpha = 0;	
	}
	else{
		image_alpha = 1;
	}
}
else{
	image_alpha = 1;	
}
//E button prompts
if ((global.energy >= global.maxEnergy && distance_to_object(ElevatorSwitchObj) < 8) || (global.closeDoor && distance_to_object(DoorObj) < 8) || (distance_to_object(UpgradeRoomObj) < 8) || (global.closestChest != pointer_null && distance_to_object(global.closestChest) < 8 && !global.closestChest.opened)){
	global.ePrompt = true;	
}
else{
	global.ePrompt = false;	
}


if ((keyboard_check_pressed(vk_shift) || keyboard_check_pressed(vk_space))&& !dodging && moveDirection.get_magnitude() != 0 && dodgeStunTimer <=0 && pickingUpTimer <= 0){
	moveDirection.normalize();
	global.disableP1Movement = true;
	dodging = true;
	if (!keyboard_check(vk_control)){
		moveSpeed = sprintSpeed * 1.2;	
	}
	else{
		moveSpeed = 1;	
	}
	image_index = 0;
}

if (dodgeStunTimer >= 0 && !(invincibleTimer > 0)){
	dodgeStunTimer--;
	image_alpha = 0.8;
}
else if (!(invincibleTimer > 0)){
	image_alpha = 1;	
}

if (stunTimer > 0){
		if (global.bossActive){
				var failSafe = 0;
				while (place_meeting(x + awayVector.x * takenKnockback, y, GateObj)){
				if (awayVector.x > 0.01){
					awayVector.x-= 0.01;
				}
				else if (awayVector.x < -0.01){
					awayVector.x+= 0.01;	
				}
				else{
					awayVector.x = 0;
				}
				failSafe++;
				if (failSafe > 9999){
					show_debug_message("I GOT STUCK");	
					break;
				}
			}
			while(place_meeting(x, y + awayVector.y * takenKnockback, GateObj)){
				if (awayVector.y > 0){
					awayVector.y-= 0.01;
				}
				else if (awayVector.y < 0){
					awayVector.y+= 0.01;	
				}
				else{
					awayVector.y = 0;
				}
				failSafe++;
				if (failSafe > 9999){
					show_debug_message("I GOT STUCK");	
					break;
				}
			}
			x += awayVector.x * takenKnockback * 0.1;
			y += awayVector.y * takenKnockback * 0.1;
		}
	stunTimer--;
	//ER IS EEN BUG
	//ALS EEN ENEMY JE PRECIES DIAGONALLY IN EEN BLOK HIT DIE JE IN RECHTE LIJNEN NIET ZOU RAKEN LOOPT DE FOR LOOK VAST
	//WANT DAN KOM JE IN HET BLOK TE ZITTEN EN PROBEERD IE EEN UITWEG TE ZOEKEN OM NIET HET BLOK TE RAKEN
	//DIT KAN JE FIXEN DOOR NIEUWE IF TOE TE VOEGEN
	//OF DOOR KNOCKBACK TE REVERSEN ALS JE IN EEN BLOK ZIT
	//SPECEFIEK REVERSE ALS JE "IN" EEN BLOK ZIT
	//if touch block op x, y
	//dan ga je weg van dat blok totrdat je m niet meer raakt, gwn like, direct eruit, rechte lijn, kortste weg
	//vector van blok tot speler en die op speler gooien
	var failSafe = 0;
	while (place_meeting(x + awayVector.x * takenKnockback, y, Obstacle)){
		if (awayVector.x > 0.01){
			awayVector.x-= 0.01;
		}
		else if (awayVector.x < -0.01){
			awayVector.x+= 0.01;	
		}
		else{
			awayVector.x = 0;
		}
		failSafe++;
		if (failSafe > 9999){
			show_debug_message("I GOT STUCK");	
			break;
		}
	}
	while(place_meeting(x, y + awayVector.y * takenKnockback, Obstacle)){
		if (awayVector.y > 0){
			awayVector.y-= 0.01;
		}
		else if (awayVector.y < 0){
			awayVector.y+= 0.01;	
		}
		else{
			awayVector.y = 0;
		}
		failSafe++;
		if (failSafe > 9999){
			show_debug_message("I GOT STUCK");	
			break;
		}
	}
	x += awayVector.x * takenKnockback * 0.1;
	y += awayVector.y * takenKnockback * 0.1;

}


if (mouse_check_button_pressed(mb_middle)){
	x = mouse_x;
	y = mouse_y;
}
if (!keyboard_check(vk_control) && !global.disableP1Movement){
	moveSpeed = sprintSpeed;	
}
else if (!global.disableP1Movement){
	moveSpeed = 0.8;	
}

if (pickingUpTimer > 0){
	pickingUpTimer--;	
}
else if (pickingUpTimer == 0){
	global.p1Collecting = false;
	pickingUpTimer = -1;
}
if (pickingUpTimer == -1 && stunTimer <= 0){
	PlayerMovement();
}

if (mouse_check_button_pressed(mb_right)){
	//useItem
	switch(global.p1Inventory[global.p1Selected][0] - 10000){
		case 1:
			var bombStruct = {
				moveVector : new vector((mouse_x - global.player.x), (mouse_y - global.player.y))
			}
			
			instance_create_depth(x, y, 0, BombObj, bombStruct);
			global.p1Inventory[global.p1Selected] = [0,0];
			break;
		case 2:
			moveToDoor = true;
			global.p1Collecting = true;
			global.p1Inventory[global.p1Selected] = [0,0];
			break;
		case 3:
			if (global.p1Health < global.p1MaxHealth){
				global.p1Health++;
				global.p1Inventory[global.p1Selected] = [0,0];
			}
	}
}

if (moveToDoor && room != Elevator){
	move_towards_point(DoorObj.x, DoorObj.y-16, distance_to_object(DoorObj)/20);
	if (distance_to_object(DoorObj) > 100){
			image_angle += distance_to_object(DoorObj)/20;
	}
	else{
		var targetRotation = 0;
		var _diff = angle_difference(targetRotation, image_angle);
		image_angle += _diff * 0.1;
	}
	stunTimer = 2;
	invincibleTimer = invincibleTime;
	if (distance_to_point(DoorObj.x, DoorObj.y-16) <= 2){
		move_towards_point(0,0,0);
		global.p1Collecting	= false;
		image_angle = 0;
		moveToDoor = false;	
	}
}

if (keyboard_check_pressed(ord("F")) && !dodging && pickingUpTimer <= 0){
	pickingUpTimer = pickUpTime;
}
if (keyboard_check_pressed(ord("G"))){
	DropItem(1);
}

if (mouse_wheel_down()){
	global.p1Selected ++;
	if (global.p1Selected > array_length(global.p1Inventory) - 1){
		global.p1Selected = 0;
	}
}
if (mouse_wheel_up()){
	global.p1Selected --;
	if (global.p1Selected < 0){
		global.p1Selected = array_length(global.p1Inventory) - 1;
	}
}


if (global.ePrompt){
	if (ePromptSize < 1){
		ePromptSize+= 0.1;
	}
}
else{
	if (ePromptSize > 0){
		ePromptSize-= 0.1;
	}
}

//show_debug_message(fps_real);

//HARDCODED UI VALUES
slotDist = 120 / (array_length(global.p1Inventory) - 1);

if (global.energy > global.maxEnergy){
	global.energy = global.maxEnergy;	
}
if (global.localEnergy < global.energy){
	global.localEnergy ++;	
}
if (global.localEnergy > global.energy){
	global.localEnergy--;	
}

energyBarLeft = (global.screenWidth/4);
energyBarRight = energyBarLeft + ((global.screenWidth/2)/global.maxEnergy) * global.localEnergy;
enBarForNumber = (energyBarLeft -  global.screenWidth/4 + ((global.screenWidth/2)))/global.cell_size;
if (global.bossActive){
	bossBarLeft = (global.screenWidth/4);
	bossBarRight = bossBarLeft + (((global.screenWidth/2)/global.bossHealthMax) * global.bossHealth);
}

if (room == DeadRoom && keyboard_check(ord("N"))){
	room_goto(Elevator);	
}