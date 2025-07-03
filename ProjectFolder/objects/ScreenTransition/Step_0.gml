//x = global.player.x;
//y = global.player.y;
if (global.loaded){
	if (global.transition){
		if (image_alpha >= 1){
			global.transition = false;
			if (room == Elevator){
				global.player.x = 120;
				global.player.y += 16;
				room_goto(global.currentDungeon);	
			}
			else{
				global.player.y -= 16;
				room_goto(Elevator);
			
			}
		}
		image_alpha += 0.1;
	}
	if (!global.transition && image_alpha > 0){
		image_alpha -= 0.1;	
	}
}

if (global.showLoading && global.loadStep >= global.totalSteps && image_alpha <= 0){
	global.showLoading = false;
}