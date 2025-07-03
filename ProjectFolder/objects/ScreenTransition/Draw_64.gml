draw_sprite_ext(sprite_index, image_index, 0, 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (global.loadStep <= global.totalSteps && global.showLoading){
	draw_set_alpha(image_alpha);
	draw_set_color(c_green);
	draw_rectangle(0, global.screenHeight/2 + 5, global.screenWidth/global.totalSteps * global.loadStep, global.screenHeight/2 - 5, false);
	draw_set_color(16777215);
	draw_set_alpha(1);
}