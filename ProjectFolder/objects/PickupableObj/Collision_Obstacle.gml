checkWalls = false;
dropped = true;
moveVector.set(x - (other.x+8), y-(other.y+8));
if (moveVector.get_magnitude() == 0){
	moveVector.x = choose(1, 0, -1);
	moveVector.y = choose(1, 0, -1);

}
moveVector.normalize();
moveSpeed = 0.1;
