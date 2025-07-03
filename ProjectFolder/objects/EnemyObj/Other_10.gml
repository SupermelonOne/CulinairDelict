spritePos.x += random_range(-1.1, 1.1);
spritePos.y += random_range(-1.1, 1.1);

//move_towards_point(awayX, awayY, -global.player.knockback);\
if (!place_meeting(x + awayVector.x * global.player.knockback * 0.1, y + awayVector.y* global.player.knockback * 0.1, Obstacle)){
	x+=awayVector.x* global.player.knockback * 0.1;
	y+=awayVector.y* global.player.knockback * 0.1;
}