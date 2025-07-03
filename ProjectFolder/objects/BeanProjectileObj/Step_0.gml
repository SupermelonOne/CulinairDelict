image_angle += 5;
DepthHandler();

x += moveDirection.x * moveSpeed;
y += moveDirection.y * moveSpeed;

if (destroySelf && sprite_index != BeanProjectileSplatSprt){
	sprite_index = BeanProjectileSplatSprt;
	moveSpeed = 0;
	event_user(10);
}
if (destroySelf && image_index >= 3){
	instance_destroy();	
}