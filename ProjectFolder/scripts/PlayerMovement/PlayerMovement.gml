// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMovement(){
	if (!global.disableP1Movement){
		var acceleration = playerAcceleration;

		var leftB = keyboard_check(ord("A"));
		var rightB = keyboard_check(ord("D"));
		var upB = keyboard_check(ord("W"));
		var downB = keyboard_check(ord("S"));

		function moveToZero(n, accel){
			if (n <= -accel)
				n += accel;
			else if (n >= accel)
				n -= accel;
			else
				n = 0;
		
			return n;
		}

		//horizontal movement
		if (rightB && leftB){
			moveDirection.x = moveToZero(moveDirection.x, acceleration);
		}
		else if (rightB)
		{
			if (moveDirection.x <= 1)
				moveDirection.x += acceleration;
		}
		else if (leftB)
		{
			if (moveDirection.x >= -1)
				moveDirection.x -= acceleration;
		}
		else {
			moveDirection.x = moveToZero(moveDirection.x, acceleration);
		}

		//verticle movement
		if (upB && downB){
			moveDirection.y = moveToZero(moveDirection.y, acceleration);
		}
		else if (downB)
		{
			if (moveDirection.y <= 1)
				moveDirection.y += acceleration;
		}
		else if (upB)
		{
			if (moveDirection.y >= -1)
				moveDirection.y -= acceleration;
		}
		else {
			moveDirection.y = moveToZero(moveDirection.y, acceleration);
		}


	
		if (moveDirection.get_magnitude() > 1)
			moveDirection.normalize();
	
	
	}
	//wall detection
	//might be changed to floor detection, only allowing movement on floor tiles
	var check1 = false;
	var check2 = false;
	if (place_meeting(x + moveDirection.x * moveSpeed, y, Obstacle)){
		moveDirection.x = 0;
		check1 = true;
	}
	if (place_meeting(x, y + moveDirection.y * moveSpeed, Obstacle)){
		moveDirection.y = 0;
		check2 = true;
	}
	if (!check1 && !check2 && place_meeting(x + moveDirection.x * moveSpeed, y + moveDirection.y * moveSpeed, Obstacle)){
		moveDirection.y = 0;
		moveDirection.x = 0;
	}
	
	if (room == Elevator && global.closeDoor){
		check1 = false;
		check2 = false;
		if (place_meeting(x + moveDirection.x * moveSpeed, y, DoorObj)){
			moveDirection.x = 0;
			check1 = true;
		}
		if (place_meeting(x, y + moveDirection.y * moveSpeed, DoorObj)){
			moveDirection.y = 0;
			check2 = true;
		}
		if (!check1 && !check2 && place_meeting(x + moveDirection.x * moveSpeed, y + moveDirection.y * moveSpeed, Obstacle)){
			moveDirection.y = 0;
			moveDirection.x = 0;
		}
	}
	if (global.bossActive){
		check1 = false;
		check2 = false;
		if (place_meeting(x + moveDirection.x * moveSpeed, y, GateObj)){
			moveDirection.x = 0;
			check1 = true;
		}
		if (place_meeting(x, y + moveDirection.y * moveSpeed, GateObj)){
			moveDirection.y = 0;
			check2 = true;
		}
		if (!check1 && !check2 && place_meeting(x + moveDirection.x * moveSpeed, y + moveDirection.y * moveSpeed, Obstacle)){
			moveDirection.y = 0;
			moveDirection.x = 0;
		}	
	}
	x += moveDirection.x * moveSpeed;
	y += moveDirection.y * moveSpeed;
}